using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;


public partial class _Default : System.Web.UI.Page
{
    private string ffmpegPath =
        @"C:\Documents and Settings\Majestic 056\My Documents\Downloads\ffmpeg-git-01fcbdf-win32-static\ffmpeg-git-01fcbdf-win32-static\bin\ffmpeg.exe";

    private string videoFilename = @"C:\Wildlife.wmv";
    private string imageFilename = @"C:\test.jpg";
    private string workingDirectory = @"C:\";
    private int timeout = 10000;
    private TimeSpan captureTime = new TimeSpan(0, 0, 1);

    protected void Page_Load(object sender, EventArgs e)
    {
        Process ffmpeg = new Process
                             {
                                 EnableRaisingEvents = true,
                                 StartInfo = new ProcessStartInfo
                                                 {
                                                     FileName = this.ffmpegPath,
                                                     Arguments = string.Format(
                                                         "-i \"{0}\" -an -y -s 320x240 -ss {1} -vframes 1 -f image2 \"{2}\"",
                                                         this.videoFilename,
                                                         DateTime.MinValue.Add(this.captureTime).ToString(
                                                             "HH:mm:ss:ff", CultureInfo.InvariantCulture),
                                                         this.imageFilename
                                                         ),
                                                     WorkingDirectory = this.workingDirectory,
                                                     UseShellExecute = false,
                                                     RedirectStandardError = true,
                                                     RedirectStandardOutput = true,
                                                     WindowStyle = ProcessWindowStyle.Hidden
                                                 }
                             };

        ffmpeg.Start();
        ffmpeg.WaitForExit(this.timeout);
        Image playbutton;
        try
        {
            playbutton = Image.FromFile("C:\\pl.jpg");
        }
        catch (Exception ex)
        {
            return;
        }

        Image frame;
        try
        {
            frame = Image.FromFile("C:\\test.jpg");
        }
        catch (Exception ex)
        {
            return;
        }

        using (frame)
        {
            using (var bitmap = new Bitmap(320, 240))
            {
                using (var canvas = Graphics.FromImage(bitmap))
                {
                    canvas.InterpolationMode = InterpolationMode.HighQualityBicubic;
                    canvas.DrawImage(frame, new Rectangle(0, 0, frame.Height, frame.Width),
                                     new Rectangle(0, 0, 320, 240), GraphicsUnit.Pixel);
                    canvas.DrawImage(playbutton, (bitmap.Width/2) - (248/2 + 5),
                                     (bitmap.Height/2) - (203/2 + 5));
                    canvas.Save();
                }
                try
                {
                    bitmap.MakeTransparent();
                    bitmap.Save("C:\\sample.jpg", ImageFormat.Jpeg);
                }
                catch (Exception ex)
                {
                }
            }
        }
    }
}