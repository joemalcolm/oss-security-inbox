Received: (qmail 3641 invoked by uid 550); 26 Dec 2023 19:21:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18200 invoked from network); 26 Dec 2023 19:14:45 -0000
Date: Tue, 26 Dec 2023 19:15:28 +0000
From: Claus Assmann <ml+oss@esmtp.org>
To: oss-security@lists.openwall.com
Message-ID: <20231226191528.GA6930@veps.esmtp.org>
References: <20231221143630.GD14101@suse.de>
 <20231221144656.GA40693@veps.esmtp.org>
 <20231222104647.GH14101@suse.de>
 <croalohbjdjf2cb6e5ol2l7rsdoxd6mr4mw55lyzzf7ljkkx5a@czm7be4dpjj4>
 <20231224093335.GM14101@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231224093335.GM14101@suse.de>
Subject: [oss-security] Re: New SMTP smuggling attack

On Sun, Dec 24, 2023, Marcus Meissner wrote:

> - CVE-2023-51765 sendmail

Can you update the text for this (or point me to the proper way/persons
to do this)?

1.
"sendmail through at least 8.14.7"
->
sendmail up to and including 8.17.2

2.
remove the seemingly unrelated reference to
"Merge sendmail 8.14.8 to HEAD  freebsd/freebsd-src@5dd76dd"

3.
Mention that 8.18 fixes the problem:
	Accept only CR LF . CR LF as end of an SMTP message as
		required by the RFCs when the new srv_features
		option 'o' is used.

sendmail 8.18.0.2 is available at
https://ftp.sendmail.org/snapshots/sendmail.8.18.0.2.tar.gz
https://ftp.sendmail.org/snapshots/sendmail.8.18.0.2.tar.gz.sig

