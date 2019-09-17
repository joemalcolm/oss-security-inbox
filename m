X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["562" "Tuesday" "17" "September" "2019" "19:58:26" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" nil "24" nil "^Date:" nil nil "9" nil nil (number mark "        hanno@hboeck Sep 17   24/562   " thread-indent "\"[oss-security] OpenDMARC buffer overflows\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] OpenDMARC buffer overflows" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22404 invoked by uid 550); 17 Sep 2019 17:58:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22386 invoked from network); 17 Sep 2019 17:58:39 -0000
Message-ID: <20190917195826.1cdb3e39@computer>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Sep 2019 19:58:26 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenDMARC buffer overflows
To: oss-security@lists.openwall.com

Hi,

In light of the recent OpenDMARC issue I had a look at their Github PR
tracker. This one
https://github.com/trusteddomainproject/OpenDMARC/pull/45
caught my attention.

Quote:
"Fix a few potential crashes

    Fix missing from_domain check for store_dkim
    Add checks for longer than buffer while parsing record"


This seems to add and fix a few length checks for buffers, i.e. fixing
buffer overflows.
I haven't analyzed it in detail.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
