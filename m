X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["329" "Friday" "8" "September" "2017" "11:27:57" "+0200" "Peter Korsgaard" "peter@korsgaard.com" "<87mv658rqa.fsf@dell.be.48ers.dk>" "15" "Re: [oss-security] Tcpdump 4.9.2" "^Cc:" nil nil "9" "2017090809:27:57" "[oss-security] Tcpdump 4.9.2" (number mark "        peter@korsga Sep  8   15/329   " thread-indent "\"Re: [oss-security] Tcpdump 4.9.2\"\n") "<CAA7hUgFVeLSChQuCvYaribpdt=9kj=o+A_LYoa1v7QgMy=RzmA@mail.gmail.com>" ("<20170907200605.GA13030@jasmine.lan>" "<CAA7hUgFVeLSChQuCvYaribpdt=9kj=o+A_LYoa1v7QgMy=RzmA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20343 invoked by uid 550); 8 Sep 2017 10:26:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7941 invoked from network); 8 Sep 2017 09:28:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version;
        bh=xU/LdUdHiH0JBQ8x+o0pNzUR5XfwU1jXkkfyU5nZx6M=;
        b=Bb8PjQqZ1jhVBd6J/hhC56kqyMNxTR+hUsjc0oqRLw107jyeswEjvKPaz4goSEaGTW
         +eReog5fz1B16QFoZHw5XJ10kTuNKD3rO/eFCn/mhhL1t2KPF9qjZzdfELvX/eskblUS
         viAudszlAVwQBJOeeFKYwcBMnVvaVGUmAYjkHW9quJCIuTqCYo76Ha+Khj+QFIwJLeYU
         cSnLtrJSfRc7L3UUYxQ3zAppOmh4UnS5LfjP/3reG06U7P9syPnRPoSMSQru+GjEhkVP
         6h9KEXZC4LkHGFLl5bDPVdrxVsZu6KLHeIEJLQTa4m8cVlMCR3mJ8wHoXjZs9QfJc2Vl
         vUwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version;
        bh=xU/LdUdHiH0JBQ8x+o0pNzUR5XfwU1jXkkfyU5nZx6M=;
        b=CKDsNeNTnk2otKxS+aqA99dXHuj4CfPsmJOUQOMxwFeu8XgVHO6Sb/aRLFP+VxX8jz
         6bZul5MvvQxtaryj0ObonLGydxUod1QHH3aQxDrgJYSmoQjTuyFsHA+g8NRenVUDYJtu
         Zies+RVTeWdMRG83VEAWAMbf63JCYGOErjJl4suHBI8r7A7bv/YsckQOA4ENn1wjXoqr
         ZDyysbkYYmMYIWVADnGCMJMZHjZ/svH61LuVi7Ll1cdSrKmKZ//QIFVyq+S1nKezDZDr
         zFkHeey3K5OWFIX40HxMh/eQOfCVLRQw9a8q2RzFE7Nc37vjMx7WZ2wcBxmUJ/RA+Xvb
         DPfA==
X-Gm-Message-State: AHPjjUhXUtgW3E1ocD6aq2nFh12DBQ3kpgkUMCLFC5mMLq6ZOE31JtlD
	GAqsu3eQVPVSxgZQCA4=
X-Google-Smtp-Source: ADKCNb4PEgffXmArC8SP/hWl52JpXSeNhmz30qOB5RoI72OA4PswTjXzC77bRwXoUiVofxu3G0e/eg==
X-Received: by 10.80.170.50 with SMTP id o47mr1803589edc.40.1504862879276;
        Fri, 08 Sep 2017 02:27:59 -0700 (PDT)
References: <20170907200605.GA13030@jasmine.lan>
	<CAA7hUgFVeLSChQuCvYaribpdt=9kj=o+A_LYoa1v7QgMy=RzmA@mail.gmail.com>
In-Reply-To: <CAA7hUgFVeLSChQuCvYaribpdt=9kj=o+A_LYoa1v7QgMy=RzmA@mail.gmail.com>
	(Raphael Geissert's message of "Fri, 8 Sep 2017 10:59:35 +0200")
Message-ID: <87mv658rqa.fsf@dell.be.48ers.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Cc: Open Source Security <oss-security@lists.openwall.com>
Date: Fri, 08 Sep 2017 11:27:57 +0200
From: Peter Korsgaard <peter@korsgaard.com>
Reply-To: oss-security@lists.openwall.com
Sender: Peter Korsgaard <jacmet@gmail.com>
Subject: Re: [oss-security] Tcpdump 4.9.2
To: Raphael Geissert <geissert@debian.org>

>>>>> "Raphael" == Raphael Geissert <geissert@debian.org> writes:

Hi,

 > Quoting the CHANGES file of the tarball[1]:

Wow!

 > [1] https://sources.archlinux.org/other/packages/tcpdump/tcpdump-4.9.2.tar.gz

Can we please have this tarball officially released on tcpdump.org /
4.9.2 tagged in git then?

-- 
Bye, Peter Korsgaard
