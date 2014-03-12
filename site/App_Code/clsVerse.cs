using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;


public class clsBibleChapter
{
    public Dictionary<int, clsVerse> Verses;

    public clsBibleChapter()
    {
        Verses = new Dictionary<int, clsVerse>();
    }

    public void AddVerse(int inid, string inVerseHTML)
    {
        clsVerse oVerse = new clsVerse(inid, inVerseHTML);


        Verses.Add(oVerse._id, oVerse);
    }

    public string GetVerses()
    {

        StringBuilder sb = new StringBuilder();


        for (int i = 1; i <= Verses.Count(); i++)
        {
            clsVerse oVerse = Verses[i];
            sb.Append(oVerse.VerseHTML);
            sb.Append("\r\n");
        }

        return sb.ToString();

    }


}

public class clsVerse
{
    public int _id { get; set; }
    public string VerseHTML { get; set; }

    public clsVerse()
    {
    }

    public clsVerse(int inid, string inVerseHTML)
    {
        _id = inid;

        VerseHTML = inVerseHTML;
    }
}