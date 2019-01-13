X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3027" "Monday" "14" "January" "2019" "10:50:53" "+1100" "Michael Ellerman" "mpe@ellerman.id.au" "<87sgxwdsma.fsf@concordia.ellerman.id.au>" "65" "Re: [oss-security] Linux kernel: Bluetooth: two remote infoleaks (CVE-2019-3459, CVE-2019-3460)" nil nil nil "1" "2019011323:50:53" "[oss-security] Linux kernel: Bluetooth: two remote infoleaks (CVE-2019-3459, CVE-2019-3460)" (number mark "U       mpe@ellerman Jan 14   65/3027  " thread-indent "\"Re: [oss-security] Linux kernel: Bluetooth: two remote infoleaks (CVE-2019-3459, CVE-2019-3460)\"\n") "<20190111140645.GA18922@openwall.com>" ("<20190111140645.GA18922@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11868 invoked by uid 550); 14 Jan 2019 09:46:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3161 invoked from network); 13 Jan 2019 23:51:09 -0000
From: Michael Ellerman <mpe@ellerman.id.au>
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
Cc: Marcel Holtmann <marcel@holtmann.org>, Johan Hedberg <johan.hedberg@gmail.com>
In-Reply-To: <20190111140645.GA18922@openwall.com>
References: <20190111140645.GA18922@openwall.com>
Date: Mon, 14 Jan 2019 10:50:53 +1100
Message-ID: <87sgxwdsma.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Linux kernel: Bluetooth: two remote infoleaks (CVE-2019-3459, CVE-2019-3460)

Solar Designer <solar@openwall.com> writes:
> Hi,
>
> Ran Menscher (Bcc'ed on this message) reported two issues (crediting
> "Shlomi Oberman, Yuli Shapiro and Karamba Security Ltd. research team")
> in Linux's Bluetooth stack to linux-distros and security@k.o on
> January 1.  Unfortunately, but unsurprisingly to me, we collectively
> failed to handle these issues well.  We did some things right, but not
> all of those that ideally would have been done before embargo end.  From
> the start, Ran was unwilling to precisely follow the linux-distros list
> policy (set a tentative public disclosure date/time) and to stay on top
> of the issues, instead expecting linux-distros to act more like a CERT
> (coordinate with other parties), which it mostly is not.  I did point
> this out to Ran, and suggested contacting Android, but I think no one
> did that.  (See the third "forwarded message" below on this "not a CERT"
> aspect and what can be done about it.)  The Bluetooth subsystem
> maintainers didn't reply.  Distros appeared uninterested in doing
> anything about the issues under embargo.  There were also numerous
> occasions where I ended up substituting for other distros' roles they
> had volunteered for.  And now I am doing Ran's job of making the
> mandatory posting to oss-security (after a reminder yesterday).
>
> On the bright side, I appreciate Greg KH's (security@k.o) handling of
> these issues.  Greg took care of notifying the Bluetooth maintainers and
> produced patches suitable for posting to the Linux lists (but still
> needing review and testing), and made such postings as soon as the
> embargo was over.  The thread with patches:
>
> https://lore.kernel.org/linux-bluetooth/20190110062833.GA15047@kroah.com/
>
> I also appreciate Yves-Alexis Perez (Debian) assigning the CVE IDs:
>
>> On Tue, 2019-01-01 at 09:27 +0000, Ran Menscher wrote:
>> > BUG 1 HEAP ADDRESS INFOLEAK IN USE OF L2CAP_GET_CONF_OPT
>>  
>> CVE-2019-3459
>> 
>> > BUG 2 HEAP DATA INFOLEAK IN MULTIPLE LOCATIONS INCLUDING FUNCTION
>> > L2CAP_PARSE_CONF_RSP
>>  
>> CVE-2019-3460
>
> Also very helpful was Ran's answer that "According to git blame, the
> issues had been introduced in Linux-2.6.12-rc2 (in 2005)"

I'm not sure that's correct. That happens to be the start of the
mainline git history, so all code older than that appears to have been
added by that commit.

Looking at the full history tree, I think I see the bug being introduced
in l2cap_get_conf_opt() here in May 2002 during the 2.5.x series:

  https://github.com/mpe/linux-fullhistory/commit/c38fab942f7ce71b30bfa71b3c75846ed6dc4846#diff-4d1b9a05ae99bd80285a75f4ded05abbL1519


Looking at l2cap_parse_conf_req(), the lack of error handling dates back
to the original submission, in v2.4.5.2 in May 2001:

  https://github.com/mpe/linux-fullhistory/commit/5857cb7a6e8112e1f3125ca2fe7f815e379ae2f3#diff-dd9f85cee1be8eba9aef4a6ee3ab099dR1436


There's instructions for using the fullhistory tree here:
  https://github.com/mpe/linux-fullhistory/wiki

cheers
