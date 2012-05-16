﻿using System;
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
        @"D:\ffmpeg-git-01fcbdf-win32-static\ffmpeg-git-01fcbdf-win32-static\bin\ffmpeg.exe";

    private string videoFilename = @"D:\Eati.swf";
    private string imageFilename = @"D:\test.jpg";
    private string workingDirectory = @"D:\";
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
            playbutton = Image.FromFile("D:\\pl.jpg");
        }
        catch (Exception ex)
        {
            return;
        }

        Image frame;
        try
        {
            frame = Image.FromFile("D:\\test.jpg");
        }
        catch (Exception ex)
        {
            return;
        }

        using (frame)
        {
            using (var bitmap = new Bitmap(240, 260))
            {
                using (var canvas = Graphics.FromImage(bitmap))
                {
                    canvas.InterpolationMode = InterpolationMode.HighQualityBicubic;
                    canvas.DrawImage(frame, new Rectangle(0, 0, frame.Height, frame.Width),
                                     new Rectangle(0, 0, 240, 260), GraphicsUnit.Pixel);
                    canvas.DrawImage(playbutton, (bitmap.Width/1) - (248/2 + 5),
                                     (bitmap.Height/1) - (253/2 + 5));
                    canvas.Save();
                }
                try
                {
                    bitmap.MakeTransparent();
                    bitmap.Save("D:\\sample.jpg", ImageFormat.Jpeg);
                }
                catch (Exception ex)
                {
                }
            }
        }
    }
}