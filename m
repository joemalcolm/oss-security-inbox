X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1746" "Wednesday" "24" "February" "2016" "14:58:03" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty27nHy0Mz0E=d648Z+BBA7nqMdF-EgL__GUqMqPBn1NYQ@mail.gmail.com>" "54" "Re: [oss-security] CVE Request: bash-completion: dequote command injection" "^Date:" nil nil "2" "2016022421:58:03" "[oss-security] CVE Request: bash-completion: dequote command injection" (number mark "        kseifried@re Feb 24   54/1746  " thread-indent "\"Re: [oss-security] CVE Request: bash-completion: dequote command injection\"\n") "<CAEr-gPHxfhxNZu0eGuZLvDWmjQjTw3d1BsTZyFKES=Zm6d+LUQ@mail.gmail.com>" ("<CAEr-gPHk8Q5dSh1rOmKiGEQ97X=JrAypPcVvv+NrzReuOHMoyg@mail.gmail.com>" "<56CE1991.2030906@redhat.com>" "<CAEr-gPHxfhxNZu0eGuZLvDWmjQjTw3d1BsTZyFKES=Zm6d+LUQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28129 invoked by uid 550); 24 Feb 2016 21:58:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28111 invoked from network); 24 Feb 2016 21:58:14 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=Q3BW3KrjKPIsn0pavaYssifsmuJyu29Cz3Eg4E4W2UU=;
        b=JF9GH8+MYOtfpq2iqt5Xcc2wYHmEsU+XyXIU0Hr2qGGxuoT09sRK32QfrOuxH6yGSi
         wqj5X88xR4hz5KxNt3EbmBs+G2Chq+UWbNcKncj/QiA3Hob+tZcDgdP+GH1hXgTs7sLj
         5y246NeurgoEV4ZBdHF8D1+UAdX21b6ErqV217SsnAFSX8naV/y2W08AGLd7VaTEaWBV
         +faIj5p90pqPIEWZ84lUUqd4mqDDX0yCCdwQFsFNlIOB9CJO7pqBHOOllxlwpTcQ+D9h
         LbqfcgQRlPWM+YbS9MlvFtRhe4a/7sYmbY1F4APJthxSKRPb+babwsfY1LXCWKaDambR
         KAEg==
X-Gm-Message-State: AG10YORsrPIM+F38P2/r/uaDx1RvYvGV5+LRO3MRQXJqNfnK33a7eQkagLcr5XtV0i/itslyczWvk/NMuD81qN4u
MIME-Version: 1.0
X-Received: by 10.13.206.2 with SMTP id q2mr23404004ywd.76.1456351083304; Wed,
 24 Feb 2016 13:58:03 -0800 (PST)
In-Reply-To: <CAEr-gPHxfhxNZu0eGuZLvDWmjQjTw3d1BsTZyFKES=Zm6d+LUQ@mail.gmail.com>
References: <CAEr-gPHk8Q5dSh1rOmKiGEQ97X=JrAypPcVvv+NrzReuOHMoyg@mail.gmail.com>
	<56CE1991.2030906@redhat.com>
	<CAEr-gPHxfhxNZu0eGuZLvDWmjQjTw3d1BsTZyFKES=Zm6d+LUQ@mail.gmail.com>
Message-ID: <CANO=Ty27nHy0Mz0E=d648Z+BBA7nqMdF-EgL__GUqMqPBn1NYQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114da67efd5aca052c8b28cb
Date: Wed, 24 Feb 2016 14:58:03 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: bash-completion: dequote command injection
To: oss-security <oss-security@lists.openwall.com>

--001a114da67efd5aca052c8b28cb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I think in this case it's pretty simply "dequoting should not result in
code execution" much like the various deserialization flaws (they should
deserialize the data, not execute random stuff).

On Wed, Feb 24, 2016 at 2:56 PM, Fernando Mu=C3=B1oz <fernando@null-life.co=
m>
wrote:

> Hello Eric,
>
> I never mentioned privilege escalation.
>
> This issue how ever could appear when a different application uses
> user input and calls "dequote" function that not only dequotes, but
> also executes it as a command. If mitre doesn't consider it CVE worth,
> that's OK!
>
> Regards.
>
>
>
> On Wed, Feb 24, 2016 at 3:58 PM, Eric Blake <eblake@redhat.com> wrote:
> > On 02/24/2016 12:08 PM, Fernando Mu=C3=B1oz wrote:
> >> Marcelo Echeverria and Fernando Mu=C3=B1oz discovered that the dequote
> >> function included in bash-completion allows to execute arbitrary
> >> commands since it uses the eval function to call printf and perform
> >> the actual dequoting. bash-completion is included on Debian, Ubuntu
> >> OpenSuse [1] and probably other distros.
> >
> > But what is the privilege escalation?  This is no different than
> > incorrectly using 'eval' in a shell script - you may have buggy code,
> > and have an easy-to-trigger bug, but if you can't escalate privileges,
> > how it is a CVE?
> >
> > --
> > Eric Blake   eblake redhat com    +1-919-301-3266
> > Libvirt virtualization library http://libvirt.org
> >
>



--=20

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114da67efd5aca052c8b28cb--
