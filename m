X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1879" "Monday" "21" "September" "2015" "15:52:07" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20150921155207.31b29845@redhat.com>" "46" "Re: [oss-security] Heap overflow and DoS in unzip 6.0" nil nil nil "9" "2015092113:52:07" "[oss-security] Heap overflow and DoS in unzip 6.0" (number mark "U       scorneli@red Sep 21   46/1879  " thread-indent "\"Re: [oss-security] Heap overflow and DoS in unzip 6.0\"\n") "<CACn5sdScL+e_x+QH4wS-cUKaEAMhSSy-jjeKufXu53j6-as_HA@mail.gmail.com>" ("<CACn5sdRQaUEHfde5QzqnOSv829baMEgDBCN7n8rzzrb+1s2uMw@mail.gmail.com>" "<20150915180357.7a0097a4@redhat.com>" "<CACn5sdScL+e_x+QH4wS-cUKaEAMhSSy-jjeKufXu53j6-as_HA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7911 invoked by uid 550); 21 Sep 2015 13:52:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7886 invoked from network); 21 Sep 2015 13:52:24 -0000
Date: Mon, 21 Sep 2015 15:52:07 +0200
From: Stefan Cornelius <scorneli@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20150921155207.31b29845@redhat.com>
In-Reply-To: <CACn5sdScL+e_x+QH4wS-cUKaEAMhSSy-jjeKufXu53j6-as_HA@mail.gmail.com>
References: <CACn5sdRQaUEHfde5QzqnOSv829baMEgDBCN7n8rzzrb+1s2uMw@mail.gmail.com>
	<20150915180357.7a0097a4@redhat.com>
	<CACn5sdScL+e_x+QH4wS-cUKaEAMhSSy-jjeKufXu53j6-as_HA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: Re: [oss-security] Heap overflow and DoS in unzip 6.0

On Tue, 15 Sep 2015 13:10:17 -0300
Gustavo Grieco <gustavo.grieco@gmail.com> wrote:
> AFAIK, upstream is still working on the heap overflow issue (the DoS
> is fixed in the last unzip beta). In concrete, they said:
> 
> "My initial (quick) analysis suggested that the basic problem is
> corrupt (unrealistic) Extra-Field sizes, which UnZip does not check
> well enough. I need to verify that that is the cause, and then figure
> out what to do about it. Currently, if the program sees an Extra-Field
> length of, say, 0x1007, it tends to believe it, even if that's bigger
> than the actual archive member's length (or perhaps even bigger than
> the whole archive). If it actually tries to read data which haven't
> been read, then valgrind gets upset (with good reason). At least
> that's what I believe so far."
>

I've tried to contact upstream via the contact form to share my
analysis. So far, I've had no response, so I'll share it here:

I believe the root cause for this issue is in extract.c around line
1250:
"""
        if (G.lrec.compression_method == STORED) {
            zusz_t csiz_decrypted = G.lrec.csize;

            if (G.pInfo->encrypted)
                csiz_decrypted -= 12; ##### BOOOOM 
            if (G.lrec.ucsize != csiz_decrypted) {
                Info(slide, 0x401, ((char *)slide,
                  LoadFarStringSmall2(WrnStorUCSizCSizDiff),
                  FnFilter1(G.filename),
                  FmZofft(G.lrec.ucsize, NULL, "u"),

So there can be an integer overflow if csiz_decrypted is smaller than
12: if (G.pInfo->encrypted)
                csiz_decrypted -= 12;
"""

Did anyone come to a similar conclusion? Also, the subsequent unzip
processing after this underflow exposed a lot of other places where
additional hardening may be a very good idea. Is somebody working on
that?

Thanks,
-- 
Stefan Cornelius / Red Hat Product Security
