X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2453" "Tuesday" "7" "March" "2017" "10:45:35" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0eb=oUz+F5o3jxt=RxXD4WSiDJeGm_m3MmUw0sfdzg_g@mail.gmail.com>" "74" "Re: [oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2" nil nil nil "3" "2017030717:45:35" "[oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2" (number mark "U       kseifried@re Mar  7   74/2453  " thread-indent "\"Re: [oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2\"\n") "<8d300c59-47af-f2ad-2d75-2d38c611491d@gmail.com>" ("<CALy8Cw6nxZkzoodbfrdWJzj15GtyE8P08cDhP95bzHKGah4spQ@mail.gmail.com>" "<8d300c59-47af-f2ad-2d75-2d38c611491d@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27848 invoked by uid 550); 7 Mar 2017 17:45:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27803 invoked from network); 7 Mar 2017 17:45:48 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=O8n45N5EKqsmJ2aCdCKoeu3GnAm+w346fwS5/DHYyMQ=;
        b=okipvksnVQDAB6TE+/8EbfOMIE+65cFaAm+G0jGu2N/guK4IhkwH2G8wgPm7Zsg6ry
         POabxinjbkygGpq1Yt6CwnoW2E6wxITx3GaPTYmF3g8TMA1RXrguQHffLZkm98T6c1ER
         68j/TIaNo0UpaMQgtfG4ELEfhbQ9Zsbxcwe4WH8k9k/NIIv3722H/UfETY5SfywWQy6q
         OiGj71NpFHdG5TTaSOU40QVzdhm5utR51DfOaknCXf65qz0TC22/7n1821Oc9Xf0lEvc
         7E7SLDaYzDZe6AJ50wELgEfxdYpr4MM3Iyl9ZKplxKtKr6p1prI63MSqi62Mj1AgfiZm
         ordw==
X-Gm-Message-State: AMke39mMCIAqzdm7atfKPWW4In67z8P4qO3qqCT6LEj4m9yvp5P7prKwuwkOgTJf9rAvyrbciKNmhxjiEqOOVBa3
X-Received: by 10.202.218.214 with SMTP id r205mr830663oig.20.1488908736420;
 Tue, 07 Mar 2017 09:45:36 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <8d300c59-47af-f2ad-2d75-2d38c611491d@gmail.com>
References: <CALy8Cw6nxZkzoodbfrdWJzj15GtyE8P08cDhP95bzHKGah4spQ@mail.gmail.com>
 <8d300c59-47af-f2ad-2d75-2d38c611491d@gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Tue, 7 Mar 2017 10:45:35 -0700
Message-ID: <CANO=Ty0eb=oUz+F5o3jxt=RxXD4WSiDJeGm_m3MmUw0sfdzg_g@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Cc: Craig Small <csmall@enc.com.au>
Content-Type: multipart/alternative; boundary=001a113d2c065678a8054a2794b6
Subject: Re: [oss-security] CVE Request: Wordpress: 6 security issues in
 Wordpress 4.7 2

--001a113d2c065678a8054a2794b6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

So this CVE request raises a good example:

Wordpress needs CVEs for its security flaws. This is a simple fact.

Now ideally the Wordpress team would become a CVE Numbering Authority (CNA)
and cover it themselves, if they would like to do this then they need to
reach out to me as the DWF guy and I can make that happen.

If that doesn't happen then the good news is we have another option now.
Someone can become a CVEMentor and CNA and take over the Wordpress
assignments (well until Wordpress becomes a CNA). So if someone wants to
step up and do this, please contact me as the DWF guy and I can make that
happen.

This is also true for other projects/open source products. We need better
CVE coverage. Ideally these projects/products step up and become CNA's, but
if they cannot (lack of resources/time/etc) that's ok, because now people
with an interest can come forwards and do it.

On Tue, Mar 7, 2017 at 4:16 AM, Emilio Pozuelo Monfort <pochu27@gmail.com>
wrote:

> On 07/03/17 11:44, Craig Small wrote:
> > Hello again,
> >  Wordpress 4.7.3 fixes 6 security issues.  Summer of Pwnage has reported
> 2
> > here yesterday but here is the list from the wordpress site.
> >
> > Cross-site scripting (XSS) via media file metadata. Reported by Chris
> Andr=C3=A8
> > Dale, Yorick Koster, and Simon P. Briggs.
> >
> > Control characters can trick redirect URL validation. Reported by Daniel
> > Chatfield.
> >
> > Unintended files can be deleted by administrators using the plugin
> deletion
> > functionality. Reported by xuliang.
> >
> > Cross-site scripting (XSS) via video URL in YouTube embeds. Reported by
> > Marc Montpas.
> >
> > Cross-site scripting (XSS) via taxonomy term names. Reported by Delta.
> >
> > Cross-site request forgery (CSRF) in Press This leading to excessive use
> of
> > server resources. Reported by Sipke Mellema.
> >
> >
> > Reference:
> > https://wordpress.org/news/2017/03/wordpress-4-7-3-
> security-and-maintenance-release/
>
> Please report these through http://cveform.mitre.org/ to get CVEs
> assigned, and
> follow up here with the CVE identifiers after that's done.
>
> Thanks,
> Emilio
>



--=20

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d2c065678a8054a2794b6--
