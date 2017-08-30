X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["886" "Wednesday" "30" "August" "2017" "08:01:31" "-0800" "ISC Security Officer" "security-officer@isc.org" "<1d770872-05b4-6e74-930f-09a49c34ad24@isc.org>" "23" "[oss-security] A recommendation for maintainers of BIND packages (re: DNSSEC validation)" nil nil nil "8" "2017083016:01:31" "[oss-security] A recommendation for maintainers of BIND packages (re: DNSSEC validation)" (number mark "U       security-off Aug 30   23/886   " thread-indent "\"[oss-security] A recommendation for maintainers of BIND packages (re: DNSSEC validation)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3761 invoked by uid 550); 30 Aug 2017 16:05:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32256 invoked from network); 30 Aug 2017 16:01:50 -0000
To: oss-security@lists.openwall.com
From: ISC Security Officer <security-officer@isc.org>
Message-ID: <1d770872-05b4-6e74-930f-09a49c34ad24@isc.org>
Date: Wed, 30 Aug 2017 08:01:31 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:52.0)
 Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] A recommendation for maintainers of BIND packages (re: DNSSEC
 validation)

Hello, oss-security list subscribers --

Please pardon the intrusion but ISC are trying to reach packagers who
maintain and redistribute packages of BIND based on our source.

We know that many of you selectively pick and choose changes which are
added to current BIND releases for backporting to older BIND versions
on which your distributed packages are based.  For those of you who do,
we would like to make sure you have selected this change:

4564.	[maint]		Update the built in managed keys to include the
			upcoming root KSK. [RT #44579]

and distributed it to users prior to the completion of the in-progress
root key rollover in order to ensure that DNSSEC validation continues
to work for operators who are using BIND's managed-keys functionality.

If you have any questions, you may contact us using security-officer@isc.org

Thank you,

Michael McNally
ISC Security Officer
