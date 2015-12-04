#!/usr/bin/env groovy

import groovy.xml.MarkupBuilder

def input = args ? new File(args[0]) : 'http://www.skysports.com/sitemap_news_football.xml'
FileWriter writer = new FileWriter('out.html')

def root = new XmlSlurper().parse(input)
def markup = new MarkupBuilder(writer)

markup.html{
	body {
		table {
			root.url.each { url ->
				tr {
					td( url.news.publication_date )
					td{ a href: url.loc, url.news.title }
				}
			}
		}
	}
}