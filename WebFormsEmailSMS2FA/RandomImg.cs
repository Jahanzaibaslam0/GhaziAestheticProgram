using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Drawing.Text;


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace WebFormsEmailSMS2FA
{
    public class RandomImg
    {
        public RandomImg() { }
        public string Text
        {
            get { return this.text; }
        }
        public Bitmap Image
        {
            get { return this.image; }
        }
        public int Width
        {
            get { return this.width; }
        }
        public int Height
        {
            get { return this.height; }
        }
        public string text;
        public int width;
        public int height;
        public Bitmap image;
        public Random random = new Random();
        public RandomImg(String s, int width, int height)
        {
            this.text = s;
            this.setDimentions(width, height);
            this.GenerateImage();
        }
        public void Dispose()
        {
            GC.SuppressFinalize(this);
            this.Dispose(true);
        }
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
                this.image.Dispose();
        }
        private void setDimentions(int width, int height)
        {
            if (width <= 0)
                throw new ArgumentOutOfRangeException("width", width, "Out of range, must be greater than zero(0).");
            if (height <= 0)
                throw new ArgumentOutOfRangeException("height", height, "Out of range, must be greater than zero(0).");
            this.width = width;
            this.height = height;
        }
        private void GenerateImage()
        {
            Bitmap bitmap = new Bitmap(this.width, this.height);
            Graphics g = Graphics.FromImage(bitmap);
            g.SmoothingMode = SmoothingMode.Default;
            Rectangle rect = new Rectangle(0, 0, this.width, this.height);
            HatchBrush hatchbrush = new HatchBrush(HatchStyle.DottedGrid, Color.LightGray, Color.White);
            g.FillRectangle(hatchbrush, rect);
            SizeF size;
            float fontsize = rect.Height + 1;
            Font font;
            do
            {
                fontsize--;
                font = new Font(FontFamily.GenericMonospace, fontsize, FontStyle.Bold);
                size = g.MeasureString(this.text, font);
            }
            while (size.Width > rect.Width);
            StringFormat format = new StringFormat();
            format.Alignment = StringAlignment.Center;
            format.LineAlignment = StringAlignment.Center;
            GraphicsPath path = new GraphicsPath();
            path.AddString(this.text, font.FontFamily, (int)font.Style, 35, rect, format);
            float v = 4F;
            PointF[] points =
            {
                new PointF(this.random.Next(rect.Width)/v,this.random.Next(rect.Height)/v),
                new PointF(rect.Width- this.random.Next(rect.Width)/v,this.random.Next(rect.Height)/v),
                new PointF(this.random.Next(rect.Width)/v,rect.Height- this.random.Next(rect.Height)/v),
                new PointF(rect.Width-this.random.Next(rect.Width)/v,rect.Height- this.random.Next(rect.Height)/v)
            };
            Matrix matrix = new Matrix();
            matrix.Translate(0F, 0F);
            path.Warp(points, rect, matrix, WarpMode.Perspective, 0F);
            hatchbrush = new HatchBrush(HatchStyle.DottedDiamond, Color.SandyBrown, Color.RoyalBlue);
            g.FillPath(hatchbrush, path);
            int m = Math.Max(rect.Width, rect.Height);
            font.Dispose();
            hatchbrush.Dispose();
            g.Dispose();
            this.image = bitmap;

        }



    }
}