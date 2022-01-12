X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10281" "Wednesday" "12" "January" "2022" "10:54:42" "-0500" "Ana McTaggart" "amctagga@redhat.com" nil "234" "Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size" nil nil nil "1" nil nil (number mark "U       amctagga@red Jan 12  234/10281 " thread-indent "\"Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18368 invoked by uid 550); 12 Jan 2022 16:13:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10180 invoked from network); 12 Jan 2022 15:55:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642002898;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=fm4QfnAb5gqBvv0WR/l3hkaB9kiT6iIPdgP5Hg4cpHM=;
	b=Ba5fJVrawqOfpOgmND+FmVcDSkeppI8gAY9Vu2i3SWVPgOdV2TQBt2oYYtLaW3RtYPoR0C
	whaztokJ+sxD0SYqezyRX0N8+uib51LUvPaL8wfrqf2xvkg4LrRuPxjK/jhvArEBNa729Z
	8ywa8p9ml4NQM/cD9F2elHkvitLjcxs=
X-MC-Unique: taTd9KTHNsicbWqdfczsxw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=BEfuQjwfXB/+e2/xyGc9DjUDAXFfusWAedGFsg/F4Ww=;
        b=b2fPmTNh57j4yGIAPvJ+bAgJA2SMoBqLnEc+xnbQiKglXbp3jhi0a4bmtKKlkMl7m9
         jtUswO9rvsez8Ih6nPPU9jEVQ7F+PF6m0MRFG6fJPdT40tsffhmFCb+WEnbgjOahsJCv
         cZjYDZyX89hdf0KzY3WQAesu/viEJIpRMKQVaiWfpT6mmQz5nO7jBrOXnMy3sYSrhOYQ
         MAjr1iO8J+l+5UhyxgmLEKDatdzsDOMPv4B2TVVZzqm+DC25udljTiyhfMCjGnMPETSm
         28leUOx3b1qayiB57dO46khvtoAbLJTkoI99WlRcwzzgfWIHiLB2Mu/mAiRumGjJkuRE
         1ttw==
X-Gm-Message-State: AOAM531FhrrLv3tR8P5jN3qwqd/IEUklIHhxX/ijTivMBe9TrXRQ/8Up
	ytTSWbWBA0USIqlWUzK9JJ/229URpYXJl1Hq7Ea6afX6QY3069HQd/m+qe+smUKbgB9/wo8VFlB
	G65Bum9fR5SxJCIT7JJfXdQ8BUlnQeMDSKNR71VQNfsoe
X-Received: by 2002:a05:6214:224a:: with SMTP id c10mr52956qvc.35.1642002893650;
        Wed, 12 Jan 2022 07:54:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwVeeAi3d4oavZI9bRiF5zpfD91pmDOouwuAP78Qph8EHEsaP0UROmKe5WVVN5+4t5bEK+dO7ojASjj3SG203k=
X-Received: by 2002:a05:6214:224a:: with SMTP id c10mr52942qvc.35.1642002893339;
 Wed, 12 Jan 2022 07:54:53 -0800 (PST)
MIME-Version: 1.0
References: <CABBoSthWNAv07LcprhNazDEs_TEcqhzb94aFB7GvwU9HHm8ROw@mail.gmail.com>
 <Yd5eiNskXgdDCdID@sol.nexus.lan> <a9f45c1da8506e5c8e1ee89ffd6edc27e065e721.camel@mittwald.de>
In-Reply-To: <a9f45c1da8506e5c8e1ee89ffd6edc27e065e721.camel@mittwald.de>
From: Ana McTaggart <amctagga@redhat.com>
Date: Wed, 12 Jan 2022 10:54:42 -0500
Message-ID: <CABBoSthAQU5yHPjTFWDWWpb4ENexWrQqWW07K-udfYCsQ-VDtQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=amctagga@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="0000000000002e1f6105d564979f"
Subject: Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size

--0000000000002e1f6105d564979f
Content-Type: multipart/alternative; boundary="0000000000002e1f6005d564979d"

--0000000000002e1f6005d564979d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Here is our patch :)

Ana McTaggart

Red Hat Product Security

Red Hat Remote <https://www.redhat.com>


secalert@redhat.com for urgent response


amct@redhat.com


M: +1 (774)279-0791 <7742790791>     IM: amctagga


Pronouns:They/Them/Theirs



On Wed, Jan 12, 2022 at 7:54 AM Sven Kieske <S.Kieske@mittwald.de> wrote:

> On Di, 2022-01-11 at 22:52 -0600, John Helmert III wrote:
> > Was a patch meant to be attached? Is there any report or PR upstream?
>
> There is at least no new commit in
> https://github.com/ceph/ceph/blob/master/src/ceph-volume/ceph_volume/util=
/encryption.py
>
> from a cursory glance at the open PRs I also don't see anything related,
> but I just might have missed it.
>
> There is also no tracking bug at https://tracker.ceph.com when searching
> for this CVE number.
>
> --
> Mit freundlichen Gr=C3=BC=C3=9Fen / Regards
>
> Sven Kieske
> Systementwickler / systems engineer
>
>
> Mittwald CM Service GmbH & Co. KG
> K=C3=B6nigsberger Stra=C3=9Fe 4-6
> 32339 Espelkamp
>
> Tel.: 05772 / 293-900
> Fax: 05772 / 293-333
>
> https://www.mittwald.de
>
> Gesch=C3=A4ftsf=C3=BChrer: Robert Meyer, Florian J=C3=BCrgens
>
> St.Nr.: 331/5721/1033, USt-IdNr.: DE814773217, HRA 6640, AG Bad Oeynhausen
> Komplement=C3=A4rin: Robert Meyer Verwaltungs GmbH, HRB 13260, AG Bad Oey=
nhausen
>
> Informationen zur Datenverarbeitung im Rahmen unserer Gesch=C3=A4ftst=C3=
=A4tigkeit
> gem=C3=A4=C3=9F Art. 13-14 DSGVO sind unter www.mittwald.de/ds abrufbar.
>
>

--0000000000002e1f6005d564979d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Here is our patch :)<br></div><div><div><div dir=3D"l=
tr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><p style=3D"font-weight:bold;margin:0px;padding:0px;font-size:14px=
;text-transform:capitalize;font-family:&quot;RedHatText&quot;,sans-serif">
          <span style=3D"font-family:monospace"><span>Ana McTaggart<br></sp=
an></span></p><p style=3D"font-weight:bold;margin:0px;padding:0px;font-size=
:14px;text-transform:capitalize"><span style=3D"font-family:monospace"><spa=
n style=3D"font-weight:normal">Red Hat Product Security</span><br></span></=
p><p style=3D"font-weight:bold;margin:0px;padding:0px;font-size:14px;text-t=
ransform:capitalize"><span style=3D"font-family:monospace"><span style=3D"c=
olor:rgb(170,170,170);margin:0px"></span></span>
        </p><span style=3D"font-family:monospace">
=20=20=20=20=20=20=20=20
=20=20=20=20=20=20=20=20
        </span><p style=3D"font-weight:normal;margin:0px 0px 4px;font-size:=
12px">
          <span style=3D"font-family:monospace"><a style=3D"color:rgb(0,136=
,206);font-size:12px;margin:0px;text-decoration:none" href=3D"https://www.r=
edhat.com" target=3D"_blank">Red Hat <span>Remote</span></a></span>
        </p><span style=3D"font-family:monospace">
    </span><div style=3D"margin-bottom:4px">
      <span style=3D"font-family:monospace">
        <p style=3D"font-weight:normal;margin:0px;font-size:12px;font-famil=
y:&quot;RedHatText&quot;,sans-serif"><span style=3D"font-family:monospace">=
</span></p><p style=3D"font-weight:normal;margin:0px;font-size:12px;font-fa=
mily:&quot;RedHatText&quot;,sans-serif"><br><span style=3D"font-family:mono=
space"><span><a href=3D"mailto:secalert@redhat.com" target=3D"_blank">secal=
ert@redhat.com</a> for urgent response</span></span></p><p style=3D"font-we=
ight:normal;margin:0px;font-size:12px;font-family:&quot;RedHatText&quot;,sa=
ns-serif"><span style=3D"font-family:monospace"><span><br></span></span></p=
></span><p></p><p style=3D"font-weight:normal;margin:0px;font-size:12px;fon=
t-family:&quot;RedHatText&quot;,sans-serif"><span style=3D"font-family:mono=
space"><span style=3D"margin:0px;padding:0px"><a style=3D"color:rgb(0,0,0);=
font-size:12px;margin:0px;text-decoration:none" href=3D"mailto:amct@redhat.=
com" target=3D"_blank">amct@redhat.com</a>=C2=A0 =C2=A0</span>
      <span><br></span></span></p><p style=3D"font-weight:normal;margin:0px=
;font-size:12px;font-family:&quot;RedHatText&quot;,sans-serif"><br><span st=
yle=3D"font-family:monospace"><span></span></span></p><p style=3D"font-weig=
ht:normal;margin:0px;font-size:12px;font-family:&quot;RedHatText&quot;,sans=
-serif"><span style=3D"font-family:monospace"><span>M: <a href=3D"tel:77427=
90791" style=3D"color:rgb(0,0,0);font-size:12px;margin:0px;text-decoration:=
none" target=3D"_blank">+1 (774)279-0791</a>  =C2=A0 =C2=A0</span>
      <span>IM: <span>amctagga</span></span></span></p><p style=3D"font-wei=
ght:normal;margin:0px;font-size:12px;font-family:&quot;RedHatText&quot;,san=
s-serif"><span style=3D"font-family:monospace"><span><span></span></span></=
span><br><span style=3D"font-family:monospace"><span><span><span style=3D"f=
ont-family:monospace"></span></span></span></span></p><p style=3D"font-weig=
ht:normal;margin:0px;font-size:12px;font-family:&quot;RedHatText&quot;,sans=
-serif">Pronouns:They/Them/Theirs</p>
    <p></p></div></div></div></div><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 12, 2022 at 7:54 A=
M Sven Kieske &lt;<a href=3D"mailto:S.Kieske@mittwald.de">S.Kieske@mittwald=
.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">On Di, 2022-01-11 at 22:52 -0600, John Helmert III wrote:<br>
&gt; Was a patch meant to be attached? Is there any report or PR upstream?<=
br>
<br>
There is at least no new commit in <a href=3D"https://github.com/ceph/ceph/=
blob/master/src/ceph-volume/ceph_volume/util/encryption.py" rel=3D"noreferr=
er" target=3D"_blank">https://github.com/ceph/ceph/blob/master/src/ceph-vol=
ume/ceph_volume/util/encryption.py</a><br>
<br>
from a cursory glance at the open PRs I also don&#39;t see anything related=
, but I just might have missed it.<br>
<br>
There is also no tracking bug at <a href=3D"https://tracker.ceph.com" rel=
=3D"noreferrer" target=3D"_blank">https://tracker.ceph.com</a> when searchi=
ng for this CVE number.<br>
<br>
-- <br>
Mit freundlichen Gr=C3=BC=C3=9Fen / Regards<br>
<br>
Sven Kieske<br>
Systementwickler / systems engineer<br>
=C2=A0<br>
=C2=A0<br>
Mittwald CM Service GmbH &amp; Co. KG<br>
K=C3=B6nigsberger Stra=C3=9Fe 4-6<br>
32339 Espelkamp<br>
=C2=A0<br>
Tel.: 05772 / 293-900<br>
Fax: 05772 / 293-333<br>
=C2=A0<br>
<a href=3D"https://www.mittwald.de" rel=3D"noreferrer" target=3D"_blank">ht=
tps://www.mittwald.de</a><br>
=C2=A0<br>
Gesch=C3=A4ftsf=C3=BChrer: Robert Meyer, Florian J=C3=BCrgens<br>
=C2=A0<br>
St.Nr.: 331/5721/1033, USt-IdNr.: DE814773217, HRA 6640, AG Bad Oeynhausen<=
br>
Komplement=C3=A4rin: Robert Meyer Verwaltungs GmbH, HRB 13260, AG Bad Oeynh=
ausen<br>
<br>
Informationen zur Datenverarbeitung im Rahmen unserer Gesch=C3=A4ftst=C3=A4=
tigkeit=C2=A0<br>
gem=C3=A4=C3=9F Art. 13-14 DSGVO sind unter <a href=3D"http://www.mittwald.=
de/ds" rel=3D"noreferrer" target=3D"_blank">www.mittwald.de/ds</a> abrufbar=
.<br>
<br>
</blockquote></div>

--0000000000002e1f6005d564979d--

--0000000000002e1f6105d564979f
Content-Type: text/x-patch; charset="US-ASCII"; name="encryption.py.patch"
Content-Disposition: attachment; filename="encryption.py.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kybq2wro0>
X-Attachment-Id: f_kybq2wro0

ZGlmZiAtLWdpdCBhL3NyYy9jZXBoLXZvbHVtZS9jZXBoX3ZvbHVtZS91dGls
L2VuY3J5cHRpb24ucHkgYi9zcmMvY2VwaC12b2x1bWUvY2VwaF92b2x1bWUv
dXRpbC9lbmNyeXB0aW9uLnB5CmluZGV4IDcyYTBjY2YxMjFlLi4xNWNjMzRi
NGQ1NyAxMDA2NDQKLS0tIGEvc3JjL2NlcGgtdm9sdW1lL2NlcGhfdm9sdW1l
L3V0aWwvZW5jcnlwdGlvbi5weQorKysgYi9zcmMvY2VwaC12b2x1bWUvY2Vw
aF92b2x1bWUvdXRpbC9lbmNyeXB0aW9uLnB5CkBAIC05LDYgKzksMTMgQEAg
ZnJvbSAuZGlzayBpbXBvcnQgbHNibGssIGRldmljZV9mYW1pbHksIGdldF9w
YXJ0X2VudHJ5X3R5cGUKIAogbG9nZ2VyID0gbG9nZ2luZy5nZXRMb2dnZXIo
X19uYW1lX18pCiAKK2RlZiBnZXRfa2V5X3NpemUoKToKKyAgICBrZXlfc2l6
ZSA9IGNvbmYuY2VwaC5nZXRfc2FmZSgKKyAgICAgICAgJ29zZCcsCisgICAg
ICAgICdvc2RfZG1jcnlwdF9rZXlfc2l6ZScsCisgICAgICAgIGRlZmF1bHQ9
JzEwMjQnLAorICAgICkKKyAgICByZXR1cm4ga2V5X3NpemUKIAogZGVmIGNy
ZWF0ZV9kbWNyeXB0X2tleSgpOgogICAgICIiIgpAQCAtMTYsMTEgKzIzLDgg
QEAgZGVmIGNyZWF0ZV9kbWNyeXB0X2tleSgpOgogICAgICIiIgogICAgICMg
Z2V0IHRoZSBjdXN0b21pemFibGUgZG1jcnlwdCBrZXkgc2l6ZSAoaW4gYml0
cykgZnJvbSBjZXBoLmNvbmYgZmFsbGJhY2sKICAgICAjIHRvIHRoZSBkZWZh
dWx0IG9mIDEwMjQKLSAgICBkbWNyeXB0X2tleV9zaXplID0gY29uZi5jZXBo
LmdldF9zYWZlKAotICAgICAgICAnb3NkJywKLSAgICAgICAgJ29zZF9kbWNy
eXB0X2tleV9zaXplJywKLSAgICAgICAgZGVmYXVsdD0xMDI0LAotICAgICkK
KyAgICBkbWNyeXB0X2tleV9zaXplID0gZ2V0X2tleV9zaXplKCkKKyAgICBs
b2dnZXIuZGVidWcoJ2tleSBzaXplICVzJyAlIGRtY3J5cHRfa2V5X3NpemUp
CiAgICAgIyBUaGUgc2l6ZSBvZiB0aGUga2V5IGlzIGRlZmluZWQgaW4gYml0
cywgc28gd2UgbXVzdCB0cmFuc2Zvcm0gdGhhdAogICAgICMgdmFsdWUgdG8g
Ynl0ZXMgKGRpdmlkaW5nIGJ5IDgpIGJlY2F1c2Ugd2UgcmVhZCBpbiBieXRl
cywgbm90IGJpdHMKICAgICByYW5kb21fc3RyaW5nID0gb3MudXJhbmRvbShp
bnQoZG1jcnlwdF9rZXlfc2l6ZSAvIDgpKQpAQCAtMzUsOSArMzksMTIgQEAg
ZGVmIGx1a3NfZm9ybWF0KGtleSwgZGV2aWNlKToKICAgICA6cGFyYW0ga2V5
OiBkbWNyeXB0IHNlY3JldCBrZXksIHdpbGwgYmUgdXNlZCBmb3IgZGVjcnlw
dGluZwogICAgIDpwYXJhbSBkZXZpY2U6IEFic29sdXRlIHBhdGggdG8gZGV2
aWNlCiAgICAgIiIiCisgICAgbG9nZ2VyLmRlYnVnKCdhYm91dCB0byBmb3Jt
YXQgZGV2aWNlICVzJyAlIGRldmljZSkKICAgICBjb21tYW5kID0gWwogICAg
ICAgICAnY3J5cHRzZXR1cCcsCiAgICAgICAgICctLWJhdGNoLW1vZGUnLCAj
IGRvIG5vdCBwcm9tcHQKKyAgICAgICAgJy0ta2V5LXNpemUnLCAjIHNwZWNp
ZnkgdGhlIHNpemUgb2YgdGhlIGtleQorICAgICAgICBnZXRfa2V5X3NpemUo
KSwKICAgICAgICAgJy0ta2V5LWZpbGUnLCAjIG1pc25vbWVyLCBzaG91bGQg
YmUga2V5CiAgICAgICAgICctJywgICAgICAgICAgIyBiZWNhdXNlIHdlIGlu
ZGljYXRlIHN0ZGluIGZvciB0aGUga2V5IGhlcmUKICAgICAgICAgJ2x1a3NG
b3JtYXQnLApAQCAtODMsNiArOTAsOCBAQCBkZWYgbHVrc19vcGVuKGtleSwg
ZGV2aWNlLCBtYXBwaW5nKToKICAgICAiIiIKICAgICBjb21tYW5kID0gWwog
ICAgICAgICAnY3J5cHRzZXR1cCcsCisgICAgICAgICctLWtleS1zaXplJywg
IyBzcGVjaWZ5IHRoZSBzaXplIG9mIHRoZSBrZXkKKyAgICAgICAgZ2V0X2tl
eV9zaXplKCksCiAgICAgICAgICctLWtleS1maWxlJywKICAgICAgICAgJy0n
LAogICAgICAgICAnLS1hbGxvdy1kaXNjYXJkcycsICAjIGFsbG93IGRpc2Nh
cmRzIChha2EgVFJJTSkgcmVxdWVzdHMgZm9yIGRldmljZQo=

--0000000000002e1f6105d564979f--

