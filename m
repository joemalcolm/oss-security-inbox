X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2676" "Tuesday" "5" "May" "2015" "12:07:02" "-0500" "Grandma Eubanks" "tborland1@gmail.com" "<CANtF8NCvJ0sDKF3FUsFSZMeHRHkr+4q18-LEQPh9SQagR601yw@mail.gmail.com>" "77" "Re: [oss-security] PHP and some == wonkiness" nil nil nil "5" "2015050517:07:02" "[oss-security] PHP and some == wonkiness" (number mark "        tborland1@gm May  5   77/2676  " thread-indent "\"Re: [oss-security] PHP and some == wonkiness\"\n") "<20150505090109.GC14223@zoho.com>" ("<55479C75.3070000@redhat.com>" "<CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>" "<554868F6.1070305@redhat.com>" "<20150505072248.GA14223@zoho.com>" "<554874C0.509@redhat.com>" "<20150505082442.GB14223@zoho.com>" "<20150505090109.GC14223@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14069 invoked by uid 550); 5 May 2015 17:07:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14049 invoked from network); 5 May 2015 17:07:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=Dx9xajnxTLHkgorEGY2wfEvkQpKEhJvEFBAk7kigHeg=;
        b=0aan4lu5Q6cwqONP4iOhZjag/IeFFBFs6169iomVzmoWkKcXYPTzTGCe2zoj5fvfrU
         elwAwsrWOcluMHJBF/gW/EzzfsCkNNURk9LoAwoMEBIthGpsgrpIu0PZUThN1M2c8ycZ
         KDq0p+jxQ7aCXFbTlX3+DxaF2v/eRSdsKdxCu4sbX+CUV1bKTHkGCbSGSg/vBBCR+BKa
         17I5y1Tm3rjHcrK+tXKqrEub/IbxMmIKZKT4HTCmHijQUgDyHMIJMQx+9wTVE5o0ZkAX
         hr4FFQ8Mi6DuBHxgvLiT2gS0E5C8Ww88N5XkqfMU0148+pCBau3iEaVv49XIhFasV3Tw
         6tFg==
MIME-Version: 1.0
X-Received: by 10.50.176.137 with SMTP id ci9mr3107811igc.2.1430845622300;
 Tue, 05 May 2015 10:07:02 -0700 (PDT)
In-Reply-To: <20150505090109.GC14223@zoho.com>
References: <55479C75.3070000@redhat.com>
	<CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>
	<554868F6.1070305@redhat.com>
	<20150505072248.GA14223@zoho.com>
	<554874C0.509@redhat.com>
	<20150505082442.GB14223@zoho.com>
	<20150505090109.GC14223@zoho.com>
Message-ID: <CANtF8NCvJ0sDKF3FUsFSZMeHRHkr+4q18-LEQPh9SQagR601yw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0111e0da0bb50b051558b5b1
Date: Tue, 5 May 2015 12:07:02 -0500
From: Grandma Eubanks <tborland1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PHP and some == wonkiness
To: oss-security@lists.openwall.com

--089e0111e0da0bb50b051558b5b1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

http://turbochaos.blogspot.com/2013/08/exploiting-exotic-bugs-php-type-jugg=
ling.html

Your examples are seen often, and the md5 comparison example was exploited
in SMF as my public exploit shows in the above link.

if (empty($_POST['code']) || substr($realCode, 0, 10) !=3D
substr(md5($_POST['code']), 0, 10)) [4]
        {
                // Stop brute force attacks like this.
                validatePasswordFlood($_POST['u'], $flood_value, false); [5]

There's also other interesting oddities with their juggling system. I
provide several links to how you can see them, but one of my favorites is:

if ($input < "30") {
        print("$input < 30\t");
        print((int)$input);
}

You can see how this is bypassed under the "Math is Crazy" section and then
think on how this can be extrapolated.

On Tue, May 5, 2015 at 4:01 AM, mancha <mancha1@zoho.com> wrote:

> On Tue, May 05, 2015 at 08:24:42AM +0000, mancha wrote:
> > On Tue, May 05, 2015 at 09:44:00AM +0200, Florian Weimer wrote:
> > > On 05/05/2015 09:26 AM, mancha wrote:
> > >
> > > > Taking sha1 as our reference hash and "=3D=3D" as our equivalence
> > > > relation:
> > > >
> > > > All [a-f][0-9a-f]{39} are in equivalence class A.
> > > >
> > > > All 42[a-f][0-9a-f]{37} are in equivalence class B.
> > > >
> > > > Note: those regexes aren't representative of the full equivalence
> > > > classes because prepending 0s doesn't alter the value (i.e.
> > > > 0[a-f][0-9a-f]{38} is in equivalence class "A" as well..
> > >
> > > I cannot reproduce this.  Or you use =E2=80=9Cequivalence class=E2=80=
=9D in a
> > > non-standard way.
> > >
> > > -- Florian Weimer / Red Hat Product Security
> >
> > I was using "equivalence class" in a standard way but mis-understood
> > PHP's casting rules when comparing strings so never mind that comment.
> >
> > To raise the SNR back up, I agree with your assessment if we account
> > for prepended 0s. So out of the 16^40 total hashes, I believe
> > 10^38+10^37+...+10^1 of them will evaluate to float(0). A bit higher
> > than your estimate (which only considered 10^38 of them). Same order
> > of magnitude though.
> >
> > --mancha
>
> That has a small off-by-one because 40 0s will be cast to float(0) when
> compared to those.
>
> Also, we have equivalence classes such as:
>
> 2e00000000000000000000000000000000000001
> 02e0000000000000000000000000000000000001
> ...
> 0000000000000000000000000000000000002e01
> 00000000000000000000000000000000000002e1
> 0000000000000000000000000000000000000020
>
> --mancha
>

--089e0111e0da0bb50b051558b5b1--
