X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["384" "Wednesday" "17" "May" "2017" "22:36:14" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87bmqqc2n5.fsf@fifthhorseman.net>" "19" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Cc:" nil nil "5" "2017051802:36:14" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        dkg@fifthhor May 17   19/384   " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<CAP145pioFwiNj8TGKE8dz__9HdcXeV3srat+OwcozeOzi5g3Ww@mail.gmail.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>" "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>" "<20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>" "<CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com>" "<87inkzd1tg.fsf@fifthhorseman.net>" "<CAP145pjG+OFBZ9x+4vbnPJo3ScC66xLO-OpvrvQPGViGAuAMTw@mail.gmail.com>" "<CAP145pioFwiNj8TGKE8dz__9HdcXeV3srat+OwcozeOzi5g3Ww@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5987 invoked by uid 550); 18 May 2017 12:57:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7183 invoked from network); 18 May 2017 12:13:04 -0000
In-Reply-To: <CAP145pioFwiNj8TGKE8dz__9HdcXeV3srat+OwcozeOzi5g3Ww@mail.gmail.com>
References: <20170501164428.GA12322@openwall.com> <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com> <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com> <20170516220345.GA10874@openwall.com> <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com> <20170517012314.vyjnu3k7pgh5ey6s@schmorp.de> <CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com> <87inkzd1tg.fsf@fifthhorseman.net> <CAP145pjG+OFBZ9x+4vbnPJo3ScC66xLO-OpvrvQPGViGAuAMTw@mail.gmail.com> <CAP145pioFwiNj8TGKE8dz__9HdcXeV3srat+OwcozeOzi5g3Ww@mail.gmail.com>
Message-ID: <87bmqqc2n5.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Cc: oss-security@lists.openwall.com, "Jason A. Donenfeld" <Jason@zx2c4.com>, rxvt-unicode@lists.schmorp.de, rxvt@schmorp.de
Date: Wed, 17 May 2017 22:36:14 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: Robert =?utf-8?B?xZp3acSZY2tp?= <robert@swiecki.net>

On Thu 2017-05-18 02:05:24 +0200, Robert Święcki wrote:
> I believe you should try with
>
> $ ping ZZZ
>
> With
>
> $ ping 127.0.0.3
>
> it doesn't do reverse lookups at all (as you'd pointed out).

ah, absolutely right.  that does the trick. :(

"ping -c3 ZZZ" results in 6 attempted invocations of "0" after it
completes, when using iputils-ping 3:20161105-1

Regards,

    --dkg
