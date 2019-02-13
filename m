X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1823" "Wednesday" "13" "February" "2019" "13:06:01" "+0400" "Loganaden Velvindron" "loganaden@gmail.com" "<CAOp4FwQjDa6+c7HsF94At4Azj4aeyEouOO_AW8jk2iZ4hjwrOA@mail.gmail.com>" "52" "Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)" "^Cc:" nil nil "2" "2019021309:06:01" "[oss-security] CVE-2019-5736: runc container breakout (all versions)" (number mark "        loganaden@gm Feb 13   52/1823  " thread-indent "\"Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)\"\n") "<20190213090320.lce4bdign5rzqjzm@mikami>" ("<20190211130520.xwi6vpay3sc56pza@yavin>" "<20190212163606.GA4443@openwall.com>" "<20190213090320.lce4bdign5rzqjzm@mikami>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7783 invoked by uid 550); 13 Feb 2019 11:16:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12233 invoked from network); 13 Feb 2019 09:06:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SEOM5xapz2YSVfDTDhGJcZjR622p/ob79MufKNwCGBE=;
        b=p+kdDF+kBBIiIW2ITIdz6OK6mFOaww8Fe+sjBXPcHgHxKxe9bg9iSHKIzwaNmAlLdK
         4YZW2H0St2P+uhxSiMjBefgbsIycsHsOs97wzU9iRIkFH6V/2w+lwJutepumRkxH9l2M
         ZDUjjM7jAGhVxpuekT3c7mSkG6Mck84bbVpv6ytpCglNYtgeP3ZaJALeFBQiwR/95D6Z
         NQlA12XlgjkQwLGbVRKw4hW+Qh92EnSKdUyqISW7WWVKgc86t1qPe1K6AJ9X0RI5h3jT
         BunWk4Oamonw05GdKzwO6BynvDRpXrxvSg1w63L4It9q50rfwwsBhigK9IYmSo7RwwQl
         rHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SEOM5xapz2YSVfDTDhGJcZjR622p/ob79MufKNwCGBE=;
        b=T/7+flRzJsR/MCfw6npIVaxjE9MG5epYDneAny1v7ujlpjsOeUYolSWpVSqwhXEv+y
         4u93hPkyo+0Wkh4uK8N1uLMt/ndF1wn+2d4jI2PCQyxlgQ4Dc3eFSNOimQtok2UGijTQ
         E+qZrJad3EAJCjjdtYA3oHi3gitCn55uqgH81b6wKgZWh8t5SokSvrJDYtvKp7wMaefp
         CwLAWGB60id86Cgf9zD6TSmPUL/mB4erb/dVE/IF9YXE2UpY0NvUuSqUfjDzyKIgJp3I
         DgEbiRt+C4jJL+gEnE/Ls/aH7au3gfMgbJsmM271lbjSNCzGVuwjtgEhzJhpW9YnOmDN
         uy9w==
X-Gm-Message-State: AHQUAuZk5wNEiOUTxifRuZa3m+MLoMnIz/aDVhlTgfJQghOOdD/n6M26
	hfFADdAAMHJWOQWZTkc76FAyCH6tOYFXM9X4BulTdQ==
X-Google-Smtp-Source: AHgI3IarBt9iCtNYBJVh8I8CchAqko+7DPV9BQLkVIUH/1Nse0N5IGPT88pedrZVWQ1GLUBXvs9Nu5j37sYDflSDmiQ=
X-Received: by 2002:a6b:7108:: with SMTP id q8mr4281813iog.7.1550048773109;
 Wed, 13 Feb 2019 01:06:13 -0800 (PST)
MIME-Version: 1.0
References: <20190211130520.xwi6vpay3sc56pza@yavin> <20190212163606.GA4443@openwall.com>
 <20190213090320.lce4bdign5rzqjzm@mikami>
In-Reply-To: <20190213090320.lce4bdign5rzqjzm@mikami>
Message-ID: <CAOp4FwQjDa6+c7HsF94At4Azj4aeyEouOO_AW8jk2iZ4hjwrOA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000817d170581c2da96"
Cc: Solar Designer <solar@openwall.com>, Aleksa Sarai <cyphar@cyphar.com>, dev@opencontainers.org, 
	Christian Brauner <christian.brauner@ubuntu.com>
Date: Wed, 13 Feb 2019 13:06:01 +0400
From: Loganaden Velvindron <loganaden@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)
To: oss-security@lists.openwall.com

--000000000000817d170581c2da96
Content-Type: text/plain; charset="UTF-8"

I think that someone already posted a PoC on github, AFAIK.

On Wed, Feb 13, 2019 at 1:04 PM Aleksa Sarai <asarai@suse.de> wrote:

> On 2019-02-12, Solar Designer <solar@openwall.com> wrote:
> >  static int proc_exe_link(struct dentry *dentry, struct path *exe_path)
> >  {
> >         struct task_struct *task;
> > @@ -1628,10 +1780,15 @@ static int proc_exe_link(struct dentry *dentry,
> > struct path *exe_path)
> >         exe_file = get_task_exe_file(task);
> >         put_task_struct(task);
> >         if (exe_file) {
> > -               *exe_path = exe_file->f_path;
> > -               path_get(&exe_file->f_path);
> > +               int result;
> > +
> > +               result = path_in_ve(&exe_file->f_path);
> > +               if (result == 0) {
> > +                       *exe_path = exe_file->f_path;
> > +                       path_get(&exe_file->f_path);
> > +               }
> >                 fput(exe_file);
> > -               return 0;
> > +               return result;
> >         } else
> >                 return -ENOENT;
> >  }
> > ---
> >
> > This uses Virtuozzo/OpenVZ specific APIs, so won't be directly usable
> > elsewhere, but maybe a similar approach could be used upstream?
>
> I have just sent v5 of my AT_THIS_ROOT patchset to LKML[1] -- which
> allows userspace processes to block resolution of magic links. While
> blocking access through /proc/self/exe helps block this issues, being
> able to block (from userspace) resolution of all magic links would
> massively help avoid problems like this.
>
> [1]: https://marc.info/?l=linux-api&m=155002737629350&w=2
>
> --
> Aleksa Sarai
> Senior Software Engineer (Containers)
> SUSE Linux GmbH
> <https://www.cyphar.com/>
>

--000000000000817d170581c2da96--
