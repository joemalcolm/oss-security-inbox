X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["329" "Monday" "6" "July" "2015" "19:53:33" "+0100" "Adam D. Barratt" "adam@adam-barratt.org.uk" "<1436208813.7865.16.camel@adam-barratt.org.uk>" "13" "Re: [oss-security] TR : CVE request for dash 0.5.7-3  x86-64 local buffer overflow" nil nil nil "7" "2015070618:53:33" "[oss-security] TR : CVE request for dash 0.5.7-3 x86-64 local buffer overflow" (number mark "        adam@adam-ba Jul  6   13/329   " thread-indent "\"Re: [oss-security] TR : CVE request for dash 0.5.7-3  x86-64 local buffer overflow\"\n") "<F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>" ("<F19FF46A5F9A584F817BC291F2EE2EBB5199AD@server.exchange.local>" "<F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11284 invoked by uid 550); 6 Jul 2015 18:53:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10238 invoked from network); 6 Jul 2015 18:53:50 -0000
Message-ID: <1436208813.7865.16.camel@adam-barratt.org.uk>
In-Reply-To: <F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>
References: <F19FF46A5F9A584F817BC291F2EE2EBB5199AD@server.exchange.local>
	 <F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-ADSB-Scan-Signature: 6aec78ef7d8692fe84b2be37e73276c8
Date: Mon, 06 Jul 2015 19:53:33 +0100
From: "Adam D. Barratt" <adam@adam-barratt.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] TR : CVE request for dash 0.5.7-3  x86-64 local
 buffer overflow
To: oss-security@lists.openwall.com

On Mon, 2015-07-06 at 12:58 +0000, jean-marie.bourbon@armaturetech.com
wrote:
> Finaly, you can reproduce this bug easily whit a (so basic) Perl line in your dash shell :
> 
> `perl -e '$i=0;while($i<= 500){print"DEAD"x10;}'`

Why bother with $i at all? The above is just "perl -e 'while(1){print
"DEAD"x10;}'".

Regards,

Adam

