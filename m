X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1374" "Sunday" "1" "August" "2021" "20:25:00" "+0200" "Bernd Zeimetz" "bernd@bzed.de" nil "49" "[oss-security] GPSD time will jump back 1024 weeks at after week=2180 (23-October-2021)" nil nil nil "8" nil nil (number mark "U       bernd@bzed.d Aug  1   49/1374  " thread-indent "\"[oss-security] GPSD time will jump back 1024 weeks at after week=2180 (23-October-2021)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] GPSD time will jump back 1024 weeks at after week=2180 (23-October-2021)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32401 invoked by uid 550); 1 Aug 2021 20:31:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31787 invoked from network); 1 Aug 2021 18:25:14 -0000
Message-ID: <d413938d59a8d5447909877220a59f5a40809357.camel@bzed.de>
From: Bernd Zeimetz <bernd@bzed.de>
To: oss-security@lists.openwall.com
Date: Sun, 01 Aug 2021 20:25:00 +0200
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-cloud-security-sender: bernd@bzed.de
X-cloud-security-recipient: oss-security@lists.openwall.com
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on relay03-mailcontrol.conova.com with 989BF929A06
X-cloud-security-connect: mail.recluse.de[217.196.148.212], TLS=1, IP=217.196.148.212
X-cloud-security: scantime:.4039
Subject: [oss-security] GPSD time will jump back 1024 weeks at after week=2180
 (23-October-2021)

Hi,

the following mail is from the gpsd-users list, forwarding it as this will
most likely affect a lot of ntp servers and various self driving/navigating
vehicles/submarines/.... Please note that I did not check how chrony/ntpd
handle sudden jumps back in time from gps.

I know that upstream does not care about CVEs, but due to the widespread use
of gpsd assigning a CVE might be warranted.


-------
From:    Gary E. Miller
Subject: GPSD time will jump back 1024 weeks at after week=2180 (23-October-
2021)
Date:     Mon, 26 Jul 2021 14:32:10 -0700

Yo All!

Fair warning.  Issue 144: https://gitlab.com/gpsd/gpsd/-/issues/144

"GPSD time will jump back 1024 weeks at after week=2180 (23-October-2021)"

The offending commit was after 3.19, so only 3.20, 3.21 and 3.22 are
affected:

    commit cb7367496f6dd5f90c6b067c031b327921a857b2
    Author: Gary E. Miller <gem@rellim.com>
    Date:   Tue Oct 8 17:04:54 2019 -0700

The commit 7f30d88d fixes the problem for those that want to try to back port
the fix. You'll just be without all the other bug fixes..

This is a real good reason to get 3.23 out very soon.  Please test!
-------


Cheers,

Bernd



-- 
 Bernd Zeimetz                            Debian GNU/Linux Developer
 http://bzed.de                                http://www.debian.org
 GPG Fingerprint: ECA1 E3F2 8E11 2432 D485  DD95 EB36 171A 6FF9 435F


