X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/16
Message-ID: <581d0c70-deb0-039e-2707-eafeb86737fa@iki.fi>
Date: Mon, 26 Oct 2026 10:54:57 +0200 (EET)
From: Harry Sintonen <sintonen@....fi>
To: oss-security@...ts.openwall.com
Subject: Brotli CVE-2026-111497 and git-remote-https
Content-Type: text/plain; charset=utf-8

I haven't seen this mentioned here, yet: git https remote (git-remote-https) 
is vulnerable to CVE-2026-111497, too, when libcurl has been built with 
brotli support (generally this is the case for most distros).

When scanning for vulnerable apps using libcurl also check for 
CURLOPT_ENCODING since this is an alias for CURLOPT_ACCEPT_ENCODING. Fair 
bit of older code still uses this old option name. (*)

*) 
https://github.com/git/git/blob/7e34d8174dcda3435d1404c9a30bef46afe6c13e/http.c#L2284


   Regards,
-- 
l=2001;main(i){float o,O,_,I,D;for(;O=I=l/571.-1.75,l;)for(putchar(--l%80?
i:10),o=D=l%80*.05-2,i=31;_=O*O,O=2*o*O+I,o=o*o-_+D,o+_+_<4+D&i++<87;);puts
("  Harry 'Piru' Sintonen <sintonen@....fi> https://www.iki.fi/sintonen");}
