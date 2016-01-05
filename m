X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["635" "Tuesday" "5" "January" "2016" "11:13:46" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160105101345.GA13653@lorien.valinor.li>" "22" "[oss-security] CVE Request: netfilter-persistent: (local) information leak due to world-readable rules files" nil nil nil "1" "2016010510:13:46" "[oss-security] CVE Request: netfilter-persistent: (local) information leak due to world-readable rules files" (number mark "U       carnil@debia Jan  5   22/635   " thread-indent "\"[oss-security] CVE Request: netfilter-persistent: (local) information leak due to world-readable rules files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7919 invoked by uid 550); 5 Jan 2016 10:14:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7901 invoked from network); 5 Jan 2016 10:13:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8vrnwOijvk5/f1NlkWj6Rsy5VKsWeQYoNhWLtzgfC9k=;
        b=rioB7hzJ7bfYhpUn9M0gXo8n2MTtZaC4YoY3cLARiQINgNK5b2zjoTLraIP8v6oKc/
         8h20yOn45K3rfOkpTG7WF+3XNFUGHFW/iFx3ghMHY7isBROamUtPgB7TzYWY+N3qJRDK
         O69IdTIK1irCqYSaCs6dPX3u81q38760LP3/u0FTmqTWrfIfNzQbo883Cb40KlhLPEsb
         yPIg3IoMGSgxm3HkyMiBpGXpep4JLkstHJALMoLdO6d/vO/q0rPYdy6oDgolp6f4oi+V
         cBP9IQt7bp3qC/DQgLrq+k/RZ15lGXSjnrGH1JUje4/8LXTBbRqJwCdVO7old/UCBw33
         xlxQ==
X-Received: by 10.194.20.5 with SMTP id j5mr39781975wje.71.1451988828253;
        Tue, 05 Jan 2016 02:13:48 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 5 Jan 2016 11:13:46 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160105101345.GA13653@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: netfilter-persistent: (local) information leak due to
 world-readable rules files

Hi,

iptables-persistent (in Debian) is a loader for netfilter configuration
using a plugin-based architecture.

iptables-persistent is vulnerable to a (local) information leak due to
world-readable rules files. It was reported in Debian in

https://bugs.debian.org/764645

And fixed via

https://anonscm.debian.org/cgit/collab-maint/iptables-persistent.git/commit/?id=37905034f07e94c4298a1762b39b7bbd4063c0df

Could you assign a CVE for this issue?

p.s.: There is a fork of iptables-persistent. But I have not checked
if the fork https://github.com/zertrin/iptables-persistent is as well
affected by this issue).

Regards,
Salvatore
