X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["474" "Tuesday" "13" "June" "2017" "18:35:45" "+0200" "Florian Weimer" "fweimer@redhat.com" "<4ef3c586-e897-98fd-28b9-f0ad7ffe9866@redhat.com>" "11" "Re: [oss-security] Vixie/ISC Cron group crontab to root escalation" "^Date:" nil nil "6" "2017061316:35:45" "[oss-security] Vixie/ISC Cron group crontab to root escalation" (number mark "        fweimer@redh Jun 13   11/474   " thread-indent "\"Re: [oss-security] Vixie/ISC Cron group crontab to root escalation\"\n") "<2ECE9D9EEF1F524185270138AE23265955AB0414@S0MSMAIL112.arc.local>" ("<2ECE9D9EEF1F524185270138AE23265955AB00AF@S0MSMAIL112.arc.local>" "<20170613112638.axsgfjy5ntrzylb3@jwilk.net>" "<2ECE9D9EEF1F524185270138AE23265955AB0414@S0MSMAIL112.arc.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11944 invoked by uid 550); 13 Jun 2017 16:36:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11921 invoked from network); 13 Jun 2017 16:36:04 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 461A77F7B5
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=fweimer@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 461A77F7B5
References: <2ECE9D9EEF1F524185270138AE23265955AB00AF@S0MSMAIL112.arc.local>
 <20170613112638.axsgfjy5ntrzylb3@jwilk.net>
 <2ECE9D9EEF1F524185270138AE23265955AB0414@S0MSMAIL112.arc.local>
Message-ID: <4ef3c586-e897-98fd-28b9-f0ad7ffe9866@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <2ECE9D9EEF1F524185270138AE23265955AB0414@S0MSMAIL112.arc.local>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Tue, 13 Jun 2017 16:35:52 +0000 (UTC)
Date: Tue, 13 Jun 2017 18:35:45 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Vixie/ISC Cron group crontab to root escalation
To: oss-security@lists.openwall.com, Fiedler Roman <Roman.Fiedler@ait.ac.at>

On 06/13/2017 02:32 PM, Fiedler Roman wrote:
> Well, partially: what O_PATH can do, you could also do before O_PATH using 
> repeated single-level open(NO_FOLLOW)/fstat-checks. So you had to do all the 
> verification by yourself.

That's not completely accurate because open/close on device nodes can
have side effects (the classic example is a rewinding tape device).
O_PATH gives you an opportunity to perform these policy checks before
the side effect happens.

Florian
