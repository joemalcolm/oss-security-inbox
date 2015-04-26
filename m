X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1574" "Sunday" "26" "April" "2015" "13:30:00" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150426112844.GA8340@eldamar.local>" "40" "[oss-security] Possible CVE Request: Wordpress 4.1.2 security release" nil nil nil "4" "2015042611:30:00" "[oss-security] Possible CVE Request: Wordpress 4.1.2 security release" (number mark "        carnil@debia Apr 26   40/1574  " thread-indent "\"[oss-security] Possible CVE Request: Wordpress 4.1.2 security release\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31944 invoked by uid 550); 26 Apr 2015 11:30:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31924 invoked from network); 26 Apr 2015 11:30:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Rzc3WWCBFs/IhfellEKgB7gu+QQLgpXkqD4QzHMOmWo=;
        b=FBbDOl55JYw2CiTCQJEuVenEJTXXrPcPQTBNSAQndpjP8rJZYNi94JQpNq219u6y9O
         J97vfuzbe8d+UeyoBRQ6Oodf4gHxKx2lUMpezao14bPt1khp35yjBeu/Cj2r95jbJWdC
         Bm6Iai6X810NHk/M9XSe4YjYlGzhwlVfYYSnZKGTzkuZ/EnbyNctkkwbiB+IauifivYf
         tJ0NO/uBzvc3dPTIqbewZ9Y5FSYhFgOZ1lYMHFHLCj6w6oAcGZ7ObsVrsXRJ9K3BTMfd
         u/L/sV52DmtQl5Wcl3UF/5XEcMfd93A85dTMcl0F5g2QxD/DhF+gcFCpxmFGxhnNVntR
         5qHQ==
X-Received: by 10.180.211.2 with SMTP id my2mr11792183wic.78.1430047803110;
        Sun, 26 Apr 2015 04:30:03 -0700 (PDT)
Message-ID: <20150426112844.GA8340@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Sun, 26 Apr 2015 13:30:00 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] Possible CVE Request: Wordpress 4.1.2 security release
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

I have not seen a request for CVEs for the issues fixed in the recent
WordPress security release:

https://wordpress.org/news/2015/04/wordpress-4-1-2/

> WordPress 4.1.2 is now available. This is a critical security release
> for all previous versions and we strongly encourage you to update your
> sites immediately.
> 
> WordPress versions 4.1.1 and earlier are affected by a critical cross-
> site scripting vulnerability, which could enable anonymous users to
> compromise a site. This was reported by Cedric Van Bockhaven and fixed
> by Gary Pendergast, Mike Adams, and Andrew Nacin of the WordPress
> security team.
> 
> We also fixed three other security issues:
> 
>  * In WordPress 4.1 and higher, files with invalid or unsafe names
>    could be uploaded. Discovered by Michael Kapfer and Sebastian
>    Kraemer of HSASec.
>  * In WordPress 3.9 and higher, a very limited cross-site scripting
>    vulnerability could be used as part of a social engineering attack.
>    Discovered by Jakub Zoczek.
>  * Some plugins were vulnerable to an SQL injection vulnerability.
>    Discovered by Ben Bidner of the WordPress security team.
> 
> We also made four hardening changes, discovered by J.D. Grimes, Divyesh
> Prajapati, Allan Collins, Marc-Alexandre Montpas and Jeff Bowen.
> 
> We appreciated the responsible disclosure of these issues directly to
> our security team. For more information, see the release notes or
> consult the list of changes.

Could you please assign CVEs to identify the issues fixed by the
latest WordPress release?

Regards,
Salvatore
