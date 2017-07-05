X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1783" "Wednesday" "5" "July" "2017" "22:03:45" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<20170705200345.GA1671@pali>" "36" "Re: [oss-security] systemd fails to parse user that should run service" "^Cc:" nil nil "7" "2017070520:03:45" "[oss-security] systemd fails to parse user that should run service" (number mark "        pali.rohar@g Jul  5   36/1783  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>" ("<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11952 invoked by uid 550); 5 Jul 2017 20:13:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3841 invoked from network); 5 Jul 2017 20:04:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=F/3BYc4qLxJ36n/emETyZrOGfDT6Pxz4iBJr6fYgN50=;
        b=fyqp3LeFfvm9uFRJqNrNd6KEpMHm6JRtl6mKAkXfdbxIGSqVjkPajgCR+JeswsI2Go
         LIA66/PnLuNH54ayosttqx7ND5Lnb9yliL2mwvDpSNy1uCGN1ge/ZeJiNVDFmdSgbkZY
         w0gpPzRO2d9JOImJ5xTF9jooWHy1TcCdkyh61sDyC4SqucXpSmDcEKIKctdZ5XD5dyBI
         yuhM/xzkshLS5KX0iFrUjCHALccbrcj/vubLB1U0FAV7Z5HyU8LJc3NfWbQ+9JHws2qt
         Ub2gWUj1G+Gz/GoVcMwCkGK/BB6nzePSvn0Fi/Vm2v+WE/JE0gTRVqA52Pao34OlppH9
         6RIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=F/3BYc4qLxJ36n/emETyZrOGfDT6Pxz4iBJr6fYgN50=;
        b=AgRz9SE+Cz9B4KkpXSuPl7H7wP5BtIlEKbbd2HelnmD/nzDeGqlf+Urw7IhO5Dcli5
         25+txYPTRw8D4IpmQbn+N4fH3Xviud7WAiaEAl4CRdL1HgTKuWAavr9RNqwaJGmigeAT
         k56XH1G0QZzblEZ8DA9N/JGusE9Bmt/3FqIs3w+WnUCq1AuA/qottKgNZPhx7XpxMhiL
         H3+WOZXzYTGBOnFtYNSLYQQAe00z8cLUYC5D3OxTsmWrF69brmDIlv3lgZysoK4RekAW
         feFFcEk0XIU/0CVY2kNWoY6VldIveHVN/hjHgkRzMkDTMi7w8q7lXwAnqNGwt6Tih/ir
         WV1Q==
X-Gm-Message-State: AKS2vOxF7J8LND+f5XmKX/fdYp1cuo3sRxLzWyRvNNsNrfrwOKZyyjS6
	0cr+RbPu/hrbodVF
X-Received: by 10.28.111.215 with SMTP id c84mr34471957wmi.72.1499285030832;
        Wed, 05 Jul 2017 13:03:50 -0700 (PDT)
Message-ID: <20170705200345.GA1671@pali>
References: <CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Ben Tasker <ben@bentasker.co.uk>
Date: Wed, 5 Jul 2017 22:03:45 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Wed, Jul 5, 2017 at 12:28, Ben Tasker wrote:
> Honestly, I think upstream have done an *awful *job of handling it so far
> (and it's far from the only example of Poettering taking the not-a-bug
> approach questionably). Their issues do have a habit of attracting trolls,
> but I think sometimes their definition of troll expands to include anyone
> who doesn't agree with them.

The worst is that fact that discussion about this problem was locked in
upstream bugtracker. Therefore there is no other option as continue
discussion about this, which I think security issue, here at
oss-security list. But problem is that upstream do not have to monitor
this list and therefore they would ignore any results.

> FWIW, I'd be inclined to agree that it needs a CVE so that downstream
> distro's can at least refer to it, and decide how (and if) they want to
> address it. Even if they decide to stick with upstream's approach, having
> the CVE at least gives them something to make sure package reviewers refer
> to.

>From the whole discussion (and not only there) it looks like that
assigning CVE should be really done as more downstream distributions
do not follow systemd's "allowed" characters in username and needs to
handle this problem somehow. Either patching systemd or change
validation for adding new user names into system...

Is somebody going to ask Mitre for CVE? Or should it be done by Red Hat?
Because upstream bug is locked, it is not possible to ask in upstream...

> I think the approach SUSE has taken is pretty good, and it's basically the
> kind of fix I'd have liked to see upstream put in place (though in their
> case, the suggestion of a config var to define whether it's acceptable is
> also a very good suggestion).

-- 
Pali Rohár
pali.rohar@gmail.com
