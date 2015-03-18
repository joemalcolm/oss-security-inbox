X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["755" "Thursday" "19" "March" "2015" "08:31:14" "+1300" "Emmanuel Law" "emmanuel.law@gmail.com" "<CA+KTh2wQ2x4mx5LniqyjMB98kTsHO4N9d6gWoowbEehn15XSrg@mail.gmail.com>" "25" "Re: [oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary" nil nil nil "3" "2015031819:31:14" "[oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary" (number mark "        emmanuel.law Mar 19   25/755   " thread-indent "\"Re: [oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary\"\n") "<20150318191306.GA3736@zoidberg>" ("<CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>" "<20150318191306.GA3736@zoidberg>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9522 invoked by uid 550); 18 Mar 2015 19:31:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9486 invoked from network); 18 Mar 2015 19:31:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=5AsPuV1kAg3/Qm7w6ZoU/GtoiZ/N5CLrGMag8f1OJIw=;
        b=Z1CNxaLokH7oxF7BBv216Aqrz7vnkRjbHIIZ2lHNQTgiy37+gTSpqIymjhVjm1nprw
         mangZb/oG/ZOwO4xnRCbh6qjlI6HtZjM8y6YYIJnlFq4paM4IG4x8m7A4xt60c4CUMH9
         PSVUomRC0wdSm2mk9jWtWCxezgMtQ1CPacsOAQOygR6lA4FtZCVRPdhMcMz2jQHvfJq2
         w5BTajAKMBAFhtGDRDyCVOYPUSUHB07Wf6+PGqKoTi7+1ZZEQSySgMS6krKv7guiBglc
         FV0OOiYqtIyhmqtVfcLRRrnyVCKLHsdlHQ9n1+rNevxIqxKl77RwjWqTh3t3YMMZAnO2
         jo4Q==
MIME-Version: 1.0
X-Received: by 10.50.43.162 with SMTP id x2mr10014593igl.46.1426707074869;
 Wed, 18 Mar 2015 12:31:14 -0700 (PDT)
In-Reply-To: <20150318191306.GA3736@zoidberg>
References: <CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>
	<20150318191306.GA3736@zoidberg>
Message-ID: <CA+KTh2wQ2x4mx5LniqyjMB98kTsHO4N9d6gWoowbEehn15XSrg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0103e4ce6574790511952014
Cc: tk@giga.or.at, oss-security@lists.openwall.com
Date: Thu, 19 Mar 2015 08:31:14 +1300
From: Emmanuel Law <emmanuel.law@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: ZIP Integer Overflow leads to writing
 past heap boundary
To: Timo Warns <Timo.Warns@gmail.com>

--089e0103e4ce6574790511952014
Content-Type: text/plain; charset=UTF-8

Yup we realised that and notified libzip.
On 19/03/2015 8:05 am, "Timo Warns" <Timo.Warns@gmail.com> wrote:

> On 2015-03-18, Emmanuel Law wrote:
> > found an integer overflow in PHP. When processing a malform zip file with
> > many entires, it leads to a heap overflow.
> >
> > Affected Version <= PHP 5.6.6
> > Bug Report: https://bugs.php.net/bug.php?id=69253
> > Patch:
> >
> https://github.com/php/php-src/commit/ef8fc4b53d92fbfcd8ef1abbd6f2f5fe2c4a11e5
>
> This looks like it may also affect libzip upstream
> (http://hg.nih.at/libzip/file/fa78ab51417f/lib/zip_dirent.c)
>
> Was upstream (in copy) informed about the issue?
>
> Cheers, Timo
>

--089e0103e4ce6574790511952014--
