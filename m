X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["668" "Monday" "21" "September" "2015" "21:02:27" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87oagvppdo.fsf@mid.deneb.enyo.de>" "17" "Re: [oss-security] s/party/hack like it's 1999" nil nil nil "9" "2015092119:02:27" "[oss-security] s/party/hack like it's 1999" (number mark "        fw@deneb.eny Sep 21   17/668   " thread-indent "\"Re: [oss-security] s/party/hack like it's 1999\"\n") "<20150921165337.GA17627@kroah.com>" ("<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>" "<CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>" "<20150919233415.GA31305@openwall.com>" "<20150920022811.GJ17773@brightrain.aerifal.cx>" "<20150920032631.GA2301@openwall.com>" "<20150921164346.GA11060@netbsd.org>" "<20150921165337.GA17627@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29941 invoked by uid 550); 21 Sep 2015 19:02:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29903 invoked from network); 21 Sep 2015 19:02:40 -0000
References: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>
	<CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>
	<20150919233415.GA31305@openwall.com>
	<20150920022811.GJ17773@brightrain.aerifal.cx>
	<20150920032631.GA2301@openwall.com>
	<20150921164346.GA11060@netbsd.org> <20150921165337.GA17627@kroah.com>
In-Reply-To: <20150921165337.GA17627@kroah.com> (Greg KH's message of "Mon, 21
	Sep 2015 09:53:37 -0700")
Message-ID: <87oagvppdo.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Date: Mon, 21 Sep 2015 21:02:27 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] s/party/hack like it's 1999
To: oss-security@lists.openwall.com

* Greg KH:

> On Mon, Sep 21, 2015 at 04:43:46PM +0000, David Holland wrote:
>> I have been arguing for years (but without success) that vt bomb
>> injection needs to be blocked in the tty driver. This problem
>> (corruption of concurrent UTF-8 streams) needs to be too, as a matter
>> of correctness and not even security.
>
> How exactly would a tty driver "block" anything like this?

Avoiding in-band signaling in the first place. :-/

> A tty driver never looks at the data stream in the kernel, as that
> way lies madness...

Surely there is a way to prevent two writes from interleaving?  For
writes to files in O_APPEND mode, this already happens, doesn't it?
