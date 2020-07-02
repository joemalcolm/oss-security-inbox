X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["759" "Thursday" "2" "July" "2020" "13:34:03" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.2007021325170.16951@tvnag.unkk.fr>" "20" "Re: [oss-security] Contributing Back" "^cc:" nil nil "7" "2020070211:34:03" "[oss-security] Contributing Back" (number mark "        daniel@haxx. Jul  2   20/759   " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<CAKgU3W_1sg2DLq3_H2hs6QTb0sK=7by7f8bbkhdjZia6zStoQQ@mail.gmail.com>" ("<ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>" "<CAKgU3W_1sg2DLq3_H2hs6QTb0sK=7by7f8bbkhdjZia6zStoQQ@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30152 invoked by uid 550); 2 Jul 2020 11:34:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30110 invoked from network); 2 Jul 2020 11:34:18 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
In-Reply-To: <CAKgU3W_1sg2DLq3_H2hs6QTb0sK=7by7f8bbkhdjZia6zStoQQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.2007021325170.16951@tvnag.unkk.fr>
References: <ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com> <CAKgU3W_1sg2DLq3_H2hs6QTb0sK=7by7f8bbkhdjZia6zStoQQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
cc: oss-security@lists.openwall.com, xiao.zhang@windriver.com,
        Solar Designer <solar@openwall.com>
Date: Thu, 2 Jul 2020 13:34:03 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Contributing Back
To: Francis Perron <francisp@google.com>

On Thu, 2 Jul 2020, Francis Perron wrote:

>  this delay may be possible due to many things, but the simplest possibility 
> that comes to mind is that Daniel (here cc'd) from H1 has only gotten a 
> reservation of CVE number, and he and MITRE have not triggered the 
> submission yet.

In the curl project we (nowadays) request and get CVE IDs from Hackerone, and 
we've subsequently told them to publish these two recent curl related CVE IDs 
when we made them public to the world - I suspect this is just them being a 
little slow. We don't have any direct contact with MITRE.

All details regarding the two recent curl flaws are here:

  https://curl.haxx.se/docs/CVE-2020-8169.html
  https://curl.haxx.se/docs/CVE-2020-8177.html

-- 

  / daniel.haxx.se
