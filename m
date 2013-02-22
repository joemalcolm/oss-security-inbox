X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/22/14
Message-ID: <5692113.uo9U1DmkhT@devil>
Date: Fri, 22 Feb 2013 13:55:51 +0100
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: varnish world-readable logdir
Content-Type: text/plain; charset=utf-8

Hello, varnish[1], an high-performance HTTP accelerator, has a world-readable 
log/logdir. Please assign a CVE


# ls -la /var/log/varnish/    
total 8                                                                                                                                                                             
drwxr-xr-x 2 root root 4096 Feb 22 13:48 .                                                                                                                                          
drwxr-xr-x 8 root root 4096 Feb 22 13:50 ..                                                                                                                                         
-rw-r--r-- 1 root root    0 Feb 22 13:48 access.log   


[1]: https://www.varnish-cache.org/

-- 
Agostino Sarubbo
Gentoo Linux Developer
