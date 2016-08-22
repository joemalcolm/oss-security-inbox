X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["534" "Monday" "22" "August" "2016" "10:46:24" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20160822084624.i4dbedj35qd3p22j@jwilk.net>" "14" "Re: [oss-security] TLS testing results - OS distro vulnerabilities" "^Date:" nil nil "8" "2016082208:46:24" "[oss-security] TLS testing results - OS distro vulnerabilities" (number mark "        jwilk@jwilk. Aug 22   14/534   " thread-indent "\"Re: [oss-security] TLS testing results - OS distro vulnerabilities\"\n") "<DB3PR05MB217DBB2D4476DFBE907D6D8BE170@DB3PR05MB217.eurprd05.prod.outlook.com>" ("<DB3PR05MB217DBB2D4476DFBE907D6D8BE170@DB3PR05MB217.eurprd05.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31754 invoked by uid 550); 22 Aug 2016 08:46:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30709 invoked from network); 22 Aug 2016 08:46:38 -0000
Message-ID: <20160822084624.i4dbedj35qd3p22j@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <DB3PR05MB217DBB2D4476DFBE907D6D8BE170@DB3PR05MB217.eurprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <DB3PR05MB217DBB2D4476DFBE907D6D8BE170@DB3PR05MB217.eurprd05.prod.outlook.com>
User-Agent: Mutt/1.6.2-neo (2016-08-08)
X-Ovh-Tracer-Id: 13538664908914939814
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeluddrfedugddtheculddtuddrfeeltddrtddtmdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
Date: Mon, 22 Aug 2016 10:46:24 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] TLS testing results - OS distro vulnerabilities
To: oss-security@lists.openwall.com

* Mauri Miettinen <Mauri.Miettinen@student.oulu.fi>, 2016-08-20, 16:50:
>We developed a tool to check if languages and libraries verify TLS 
>certificates properly. While testing this tool we did a shootout 
>against supported versions of the some major Linux distributions.
>
>Results are available from:
>
>https://github.com/ouspg/trytls/blob/shootout-0.3/shootout/README.md

How did you manage to run tests against Debian 7 (wheezy)? Your setup.py 
requires Python 2.7.9 or 3.4.0, but wheezy has only 2.7.3/3.2.3.

-- 
Jakub Wilk
