X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2129" "Monday" "21" "November" "2016" "19:40:12" "+0000" "Ben Tasker" "ben@bentasker.co.uk" "<CABMkiz5xnE7B_kxowiKF-vnE8f9VUUx1UabNMOR-7fzqwcCZrA@mail.gmail.com>" "54" "Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence" "^Date:" nil nil "11" "2016112119:40:12" "[oss-security] WordPress (all versions): SPOF, RCE, and Negligence" (number mark "        ben@bentaske Nov 21   54/2129  " thread-indent "\"Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence\"\n") "<CANvqVdr4d8C_04Php5iP78eMfZOtat2a6LuCoqVXHojB1HE5yw@mail.gmail.com>" ("<CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>" "<CABMkiz5wp5gA=7vV6QAkV4HWUooun3-CcxjqOYqxTLLdBxwwVQ@mail.gmail.com>" "<CANvqVdr4d8C_04Php5iP78eMfZOtat2a6LuCoqVXHojB1HE5yw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25751 invoked by uid 550); 21 Nov 2016 19:52:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16100 invoked from network); 21 Nov 2016 19:40:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bentasker.co.uk; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=5/SJd9FKfRfBNgnJE8DGoAg8cOQj9WMxtqAKYUJ7fcQ=;
        b=IaUECi1YUR89C2unXiQLsZoplqOf+HrSvDQ6fKmUB4U4H/K8GWddxH8CjVA5IUxADk
         c3vrgPfbUVz5+cxXK4JDdmnWsMRIUAUz3XAW3+bAOlHvlk5vVxZC78+rOIKdXbo4kwWs
         O2r9OLZ1XaLoYQ+RcXLPTYhFiaQnokigppe8s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=5/SJd9FKfRfBNgnJE8DGoAg8cOQj9WMxtqAKYUJ7fcQ=;
        b=c3VgOI96xLll+My49Du4dRCsTd1iYUu9aHDriudntA5daOwudiAf4ywAESLH/cpwmu
         q24qLeIRP/4WXQb1n+o+w/ag+ehC6gjXWxCOdwx0pYaEhCjxihZQNlmj9EWg96h1ukFI
         qPxIc7GVa5YH/47nKJBc5JVQswZRM9W0m4bQygYAFXoR8tV13ld7rSTCa9sMDdRhicvN
         j5tDGkkD0Njn4yDpxGrGzPdgItZVHP5QenSaTx+VVqM9nHEil7JQQZxBlRb8hHMV8W/Z
         4qQfz4LoP0dXpGcj/4EvUUYRi1JhCNLyuCjU/l/Cbmpg0VZiUkxQ5bO8uR/43pIMiUhs
         n90g==
X-Gm-Message-State: AKaTC02wyZqYwEePWjAqGM3AhcnAYrnpj7AYmMt1C6qV1OuCMQ6ohaKLi007/EtDOBXte5YBhKPL7BxPpAeY8g==
X-Received: by 10.46.8.9 with SMTP id 9mr2721928lji.47.1479757213682; Mon, 21
 Nov 2016 11:40:13 -0800 (PST)
MIME-Version: 1.0
X-Originating-IP: [178.62.118.116]
In-Reply-To: <CANvqVdr4d8C_04Php5iP78eMfZOtat2a6LuCoqVXHojB1HE5yw@mail.gmail.com>
References: <CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>
 <CABMkiz5wp5gA=7vV6QAkV4HWUooun3-CcxjqOYqxTLLdBxwwVQ@mail.gmail.com> <CANvqVdr4d8C_04Php5iP78eMfZOtat2a6LuCoqVXHojB1HE5yw@mail.gmail.com>
Message-ID: <CABMkiz5xnE7B_kxowiKF-vnE8f9VUUx1UabNMOR-7fzqwcCZrA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f403045ec2921363af0541d4d32c
Date: Mon, 21 Nov 2016 19:40:12 +0000
From: Ben Tasker <ben@bentasker.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence
To: oss-security@lists.openwall.com

--f403045ec2921363af0541d4d32c
Content-Type: text/plain; charset=UTF-8

Hi Michael,

On 21 Nov 2016 18:45, "Michael Babker" <michael.babker@gmail.com> wrote:
>
>
> While I can somewhat understand why the Linux distributions choose the
> model they use for their "long term support" packages, it honestly does a
> disservice to those of us who now have to defensively code around it.  We
> can no longer rely on a package's version to accurately represent the
state
> of the code base.

I agree, and truth be told I think there's some ground to be given on
either side.

There are good reasons for using stable distros, but as you say it makes it
very hard to build something when you can't rely on version numbers to
identify patch levels.

>
> I was Joomla's release lead at the time this decision was made.  We did
not
> arbitrarily choose a PHP version number, arbitrarily locking out vendor
> modified PHP builds distributed with the LTS distros, just because we
> wanted to.

Sorry, didn't mean to make it sound like it was arbitrary. I know the
reasoning was based on available functionality vs required fuctionality.

> While I understand where you are coming from, to be quite frank, I don't
> believe the PHP ecosystem and its major players can continue to cater to
> these modified PHP builds as might have been expected in years past.

The problem is that these builds still constitute the majority of your
target market. It'll start to improve for a while due to Jessie and CentOS7
having a higher version, but as those approach EOL the same issue will
probably come up again.

The average user who just buys hosting doesn't have an awful lot of control
over what the hosts run either (though things do actually seem to be
improving in this regard)

I don't have a good answer as to what the solution is. There're very good
reasons for the LTS approach, but you're right about it being a  untenable
position.

I am inclined to think it should be down to the distros to find a
resolution for, whether through exposing a reliable means to check
functionality level or some other means

--f403045ec2921363af0541d4d32c--
