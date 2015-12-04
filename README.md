# xslt-vs-groovy
Demo, showing how Groovy can be used for XML transformation in place of XSLT

Make sure you have [Groovy installed](http://www.groovy-lang.org/download.html) and have the 'groovy' binary in your path
```
> groovy -v

Groovy Version: 2.4.3 JVM: 1.8.0_45 Vendor: Oracle Corporation OS: Windows 8
```

Run:
```
> skyfeed
```
This will take as input the current XML data of [the Sky Sports Football Feed](http://www.skysports.com/sitemap_news_football.xml) and will transform the XML into an HTML file 'out.html'

Alternatively, run: 
```
> skyfeed localfile
```

where 'localfile' is the path of the XML file downloaded from [the Sky Sports Football Feed](http://www.skysports.com/sitemap_news_football.xml) at some point of time.
E.g. run: 

```
> skyfeed sitemap_news_football.xml
```
