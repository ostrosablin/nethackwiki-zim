# NetHackWiki offline ZIM dump

This is a NetHackWiki offline ZIM dump and a shell script that is used to scrape it. If you want to get the ZIM dump, you can grab it from [releases page](https://github.com/tmp6154/nethackwiki-zim/releases/latest). It could be used with Kiwix or any other compatible ZIM viewer/server.

If you want to scrape the wiki yourself, run **dumpnethackwiki.sh** from this repository (you need to have docker installed and have permissions to run containers and operate docker daemon). If scrape is successful, it should produce a directory **./out**, containing the scraped ZIM file.

## License

NetHackWiki is licensed under FDL (Free Documentation License), so the ZIM files are also FDL-licensed. Scraping shell script, used to produce ZIM files comes under GPLv3.
