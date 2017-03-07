X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1088" "Tuesday" "7" "March" "2017" "12:16:03" "+0100" "Emilio Pozuelo Monfort" "pochu27@gmail.com" "<8d300c59-47af-f2ad-2d75-2d38c611491d@gmail.com>" "31" "Re: [oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2" nil nil nil "3" "2017030711:16:03" "[oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2" (number mark "U       pochu27@gmai Mar  7   31/1088  " thread-indent "\"Re: [oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2\"\n") "<CALy8Cw6nxZkzoodbfrdWJzj15GtyE8P08cDhP95bzHKGah4spQ@mail.gmail.com>" ("<CALy8Cw6nxZkzoodbfrdWJzj15GtyE8P08cDhP95bzHKGah4spQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25699 invoked by uid 550); 7 Mar 2017 11:28:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17856 invoked from network); 7 Mar 2017 11:16:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=/vdqVGZQZbXl3+jBv2J5M+KeBEuSDQWqTNlY5WojMcI=;
        b=WYXSHeSWDZNRid37Cxozyhdz8ALk0Kg6lvXV4fNy0OoJq22ZmzB+vK3QdM5Uw/UHZi
         GMbVFfNkcqztlB9ti+nNe4gF7S7W+Bf1cqOBR1kjPcbVMgywFflBfXKma8gOwn9xiV19
         gVeAVj7zLJOQ3p5LwjRqWj1wqQh/Ne6OS9ypMezZCuPV41WAtNCU/LVn8raxFQNK7ruR
         2J2oq+Y9GcxCjF4m3PUHWIsd8m6DTLLOvrAOMwgp3XHAk5EigHMz+N+9cQ5wlFD1bx3q
         /JH04xR79dAq+wb8wK8rTbeLtycWUiJgbgJRlibg3AiQwpa1WZgcHY00/ug35l/g7ew2
         sM9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=/vdqVGZQZbXl3+jBv2J5M+KeBEuSDQWqTNlY5WojMcI=;
        b=cswrOeOyBa18Wj7cWcbNoysPRKNn88QI8FfmPUjLupnvchRx+EgdLb9P08U/IlY3+z
         LEN38uL5ryTxOo8f7VdflqGBJdXK5aK8k06emjvEfLO0+HgI3ECKrzHOBnH/EKUefx3d
         88d5Vswm/sCgZs0oQrcHg9MeCywUBnDUpljMt3LwZ0w9e23k6D+uyFPR8AHz/mQAidgX
         Bat1xXJ12BxYw8Bd+gKU1nvwHZBJabh4BYGoSa3ez/Ni479AihVv+02cize+BN+k9atU
         TBSwv6VWo96D1p5FmLoP5NVrY6VmkJ/xGDp6AuD5qWRvfTTkb4XVne82V2PxR59HaJ5C
         w/8A==
X-Gm-Message-State: AMke39nSvVA0hqyJcQynWsfDx1KJwrPh4jkKxi6znaIJy6eZnJfBbz2GKCEKTOpTsUfE4Q==
X-Received: by 10.28.46.73 with SMTP id u70mr17366161wmu.54.1488885365016;
        Tue, 07 Mar 2017 03:16:05 -0800 (PST)
To: oss-security@lists.openwall.com, Craig Small <csmall@enc.com.au>
References: <CALy8Cw6nxZkzoodbfrdWJzj15GtyE8P08cDhP95bzHKGah4spQ@mail.gmail.com>
From: Emilio Pozuelo Monfort <pochu27@gmail.com>
Message-ID: <8d300c59-47af-f2ad-2d75-2d38c611491d@gmail.com>
Date: Tue, 7 Mar 2017 12:16:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <CALy8Cw6nxZkzoodbfrdWJzj15GtyE8P08cDhP95bzHKGah4spQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE Request: Wordpress: 6 security issues in
 Wordpress 4.7 2

On 07/03/17 11:44, Craig Small wrote:
> Hello again,
>  Wordpress 4.7.3 fixes 6 security issues.  Summer of Pwnage has reported 2
> here yesterday but here is the list from the wordpress site.
> 
> Cross-site scripting (XSS) via media file metadata. Reported by Chris Andrè
> Dale, Yorick Koster, and Simon P. Briggs.
> 
> Control characters can trick redirect URL validation. Reported by Daniel
> Chatfield.
> 
> Unintended files can be deleted by administrators using the plugin deletion
> functionality. Reported by xuliang.
> 
> Cross-site scripting (XSS) via video URL in YouTube embeds. Reported by
> Marc Montpas.
> 
> Cross-site scripting (XSS) via taxonomy term names. Reported by Delta.
> 
> Cross-site request forgery (CSRF) in Press This leading to excessive use of
> server resources. Reported by Sipke Mellema.
> 
> 
> Reference:
> https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/

Please report these through http://cveform.mitre.org/ to get CVEs assigned, and
follow up here with the CVE identifiers after that's done.

Thanks,
Emilio
