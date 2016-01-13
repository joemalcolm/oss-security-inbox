X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["738" "Tuesday" "12" "January" "2016" "19:06:06" "-0500" "David W. Hodgins" "davidwhodgins@gmail.com" "<op.ya5g8gepn7mcit@hodgins.homeip.net>" "17" "Re: [oss-security] Discuss: Daily/weekly cron jobs best practices" "^Date:" nil nil "1" "2016011300:06:06" "[oss-security] Discuss: Daily/weekly cron jobs best practices" (number mark "        davidwhodgin Jan 12   17/738   " thread-indent "\"Re: [oss-security] Discuss: Daily/weekly cron jobs best practices\"\n") "<3412231.rSTmOYfSpU@sarpedon>" ("<568D9DEC.7030306@halfdog.net>" "<3412231.rSTmOYfSpU@sarpedon>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31844 invoked by uid 550); 13 Jan 2016 00:22:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23968 invoked from network); 13 Jan 2016 00:06:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=content-type:to:subject:references:date:mime-version
         :content-transfer-encoding:from:message-id:in-reply-to:user-agent;
        bh=25JFoKJcjekZdQXLBj3c4Wx/jiRUZdkOmjdsOQYKSfc=;
        b=jH5UzRiT7NF+n6xdWdPy6+p2EtYhpChhXVHrB0/Fz6mUGZDyqQCI3/+nlO7ERDCer4
         GgWaQnGA/qIRDiwRfUpJiSZvR1X1uPLCiFx6Grv6WhkShWuENG+ArA0gijtL+qnK8T8K
         IYJbqNxUn8b0UV+6UKBb3WKGdEhttLkx90EjtrEFrewmdN55R1G2l+NkhllWXTUjV2C6
         lyx5Qc7R7JDwECo6zkoMmxJeVoHYmrItKgsoOkoZaIevQCRHC8nsq7sWCVoF/t4ew+jh
         4fckEBBDEkVpsGSD4GkLsyeS52hSpabREvWFjreuI1PqYBlnq3XCvg8JcbSOpwaxYCD9
         tavw==
X-Received: by 10.50.43.131 with SMTP id w3mr19564742igl.70.1452643568183;
        Tue, 12 Jan 2016 16:06:08 -0800 (PST)
Content-Type: text/plain; charset=utf-8; format=flowed; delsp=yes
References: <568D9DEC.7030306@halfdog.net> <3412231.rSTmOYfSpU@sarpedon>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID: <op.ya5g8gepn7mcit@hodgins.homeip.net>
In-Reply-To: <3412231.rSTmOYfSpU@sarpedon>
User-Agent: Opera Mail/12.16 (Linux)
Date: Tue, 12 Jan 2016 19:06:06 -0500
From: "David W. Hodgins" <davidwhodgins@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Discuss: Daily/weekly cron jobs best practices
To: oss-security@lists.openwall.com

On Mon, 11 Jan 2016 05:25:11 -0500, Tim Brown <tmb@65535.com> wrote:

> Not uncommon, we pop almost every UNIX box we touch this way, I assume you've
> seen unix-privesc-check?

Tried it. Too much output to be of any use. With complaints like
I: [group_writable] /home/dave/home/dave/.gnupg/pubring.gpg is owned
  by user dave (group dave) and is group-writable (-rwxrwx---)
W: [setgid] /usr/lib64/kde4/libexec/kdesud is setgid (root, nogroup):
  -rwxr-sr-x
W: [setuid] /usr/bin/su is setuid (root, root): -rwsr-xr-x

With 152149 lines going to stdout on my system, a quick skim of the
output doesn't show anything useful. I don't see anything in the
output that it's complaining about, that isn't as it should be.

Regards, Dave Hodgins
