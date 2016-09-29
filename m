X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["611" "Thursday" "29" "September" "2016" "16:18:44" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1609291617400.13997@tvnag.unkk.fr>" "25" "[oss-security] Re: [SECURITY ADVISORY] c-ares: single byte out of buffer write" nil nil nil "9" "2016092914:18:44" "[oss-security] Re: [SECURITY ADVISORY] c-ares: single byte out of buffer write" (number mark "U       daniel@haxx. Sep 29   25/611   " thread-indent "\"[oss-security] Re: [SECURITY ADVISORY] c-ares: single byte out of buffer write\"\n") "<alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>" ("<alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19965 invoked by uid 550); 29 Sep 2016 14:18:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19854 invoked from network); 29 Sep 2016 14:18:57 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Thu, 29 Sep 2016 16:18:44 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: c-ares hacking <c-ares@cool.haxx.se>
cc: oss-security@lists.openwall.com
In-Reply-To: <alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>
Message-ID: <alpine.DEB.2.20.1609291617400.13997@tvnag.unkk.fr>
References: <alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: [oss-security] Re: [SECURITY ADVISORY] c-ares: single byte out of buffer write

On Thu, 29 Sep 2016, Daniel Stenberg wrote:

> INFO
> ----
>
> The Common Vulnerabilities and Exposures (CVE) project has assigned the name
> CVE-2016-5180 to this issue.
>
> AFFECTED VERSIONS
> -----------------
>
> This flaw exists in the following c-ares versions.
>
> - Affected versions: libcurl 1.0.0 to and including 1.11.0
> - Not affected versions: c-ares >= 1.12.0

Sorry for being sloppy. I meant to write c-ares above and not libcurl. This 
was a copy and paste error that is already fixed in the web version of this 
advisory at

  https://c-ares.haxx.se/adv_20160929.html

-- 

  / daniel.haxx.se
