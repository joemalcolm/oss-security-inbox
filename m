X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1050" "Wednesday" "1" "November" "2017" "11:31:57" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>" "22" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110115:31:57" "[oss-security] Fw: Security risk of vim swap files" (number mark "        noloader@gma Nov  1   22/1050  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171101144927.srk7stiwoia4qt57@sentinelchicken.org>" ("<20171031132352.2df6d2ad@pc1>" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" "<20171101023330.GK30551@takahe.colorado.edu>" "<20171101144927.srk7stiwoia4qt57@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19986 invoked by uid 550); 1 Nov 2017 15:47:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1602 invoked from network); 1 Nov 2017 15:32:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=XKTDN8PBH/3uh3CtjfSYz480agRyb3zmulzJSa3Fq24=;
        b=FfcZjQUMpc8Iy1MygoKhC2UHxsK58GCRzq5oPIIesNygd4TR+LWXIXYAW0UoQXxxBX
         t9laExDcEM8iKm0J1JsznT8Jfc52koV1+ce4G5PrAuZ+rCjkXZfy+U9pdfubz0FIUZxq
         XJv9tjedB7bLexOFNi3Kza79yH5Mf/ivAxFyjwyl7j11TIq/PvuSYeBv6+3WpX/t2GXI
         1iEfHNAZaVixoeBp2WZneLG6kR7JDIkGmAsY1ptvtjrvoft1oEo6i/kGRlpyMHMU2+T1
         L+nNPmQGxgL4LYMhbtQJs15GH4tjtvQYI2qT3p6KQD4IiD2KjziwDagIaWoSWdaLGQ2r
         UK5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to;
        bh=XKTDN8PBH/3uh3CtjfSYz480agRyb3zmulzJSa3Fq24=;
        b=Qxmw1jomMdJpLkbccFp1m4Zeonc+Mo8Xwwrm/MuTeVYPjxAavEhnl1GBSFk9aKGtxz
         mtEqvLns/LhJoe0jBmkmzKoJXBrt3REbpCwXKIXQdKc9wMBjLEgFUBKki7iXd6ap+pmb
         KYGJzeyxYHXzvl+lCzoDRJO7U3qXc6BKh47q4onxjVSXyO4MAjRvsroTfBMwBzytvdQl
         we/1rdazquPuZ/gwpSpYA81ymZqzWq9CaC/81skFmRg9xy+lwtHdfAqUnM+X0nIO+PfY
         83zEphGGa03CExJfqCZ6j9VdZ92HKtpan051w9GVPZBZ31chvVsZjl+5vfLTOIZjlUy/
         zcMA==
X-Gm-Message-State: AJaThX5Fr7qcfOqI54LYl2X1reoFYNO7oCxUo+L5fc1YK0jGdOP6olNI
	BxQZ9X6YE0/1fGTO7YI038LW/T6uPKEK24RE8xeBXzGy
X-Google-Smtp-Source: ABhQp+Rr6XoPCXAsm1UKKpBMWM32P4LAtJcFcJq+h7XXyg1EHuBYPqlUK+xfhQZI5sJOBzbRtWMVJlTn0tij+3aHDHg=
X-Received: by 10.157.44.7 with SMTP id f7mr140974otb.378.1509550317893; Wed,
 01 Nov 2017 08:31:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20171101144927.srk7stiwoia4qt57@sentinelchicken.org>
References: <20171031132352.2df6d2ad@pc1> <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
 <20171101023330.GK30551@takahe.colorado.edu> <20171101144927.srk7stiwoia4qt57@sentinelchicken.org>
Message-ID: <CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 1 Nov 2017 11:31:57 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On Wed, Nov 1, 2017 at 10:49 AM, Tim <tim-security@sentinelchicken.org> wrote:
>> > Also, it almost never makes sense to put things in /tmp, for several
>> > reasons pointed out by others.  Making ~/.vim/... the default location
>> > clearly is the best solution.
>>
>> And all those reasons make no sense. /tmp has a sticky bit precisely so that
>> people could put stuff there, as opposed to /run.
>
> We've been spending decades fixing filesystem races that arise from
> cases where people use temporary files in world-writable directories.
> You have to get a half dozen things exactly correct in order to use
> /tmp.  Why take the risk?  Doesn't every normal (human) user account
> have a home directory that is already protected?

Some installs don't allow users to write to /tmp. For example, some
machines on GCC's compile farm do not allow it. I seem to recall the
error was a RO mount. Also see https://gcc.gnu.org/wiki/CompileFarm.

Code and scripts certainly need to check TMPDIR and then have a
fallback strategy if it is missing.

Jeff
