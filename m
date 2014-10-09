X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/09/33
Message-ID: <alpine.BSF.2.00.1410100744160.31844@aneurin.horsfall.org>
Date: Fri, 10 Oct 2014 07:51:11 +1100 (EST)
From: Dave Horsfall <dave@...sfall.org>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: Of Shellshock and logfiles
Content-Type: text/plain; charset=utf-8

I don't *think* I've seen this mentioned here (and apologies if so), but 
somebody posited on another list that Shellshock attempts in one's Apache 
logs are not directed against PHP or its scripts, but rather against those 
Bash scripts that analyse the Apache logs in turn...  I've heard of 
similar things in mail logs, which *could* be the result of attempting to 
target either Procmail or logfile analysers.

Then again, maybe the spammers really are that desperate that they'll try 
anything that they think might work.

-- Dave
