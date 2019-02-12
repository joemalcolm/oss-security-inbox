X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["756" "Tuesday" "12" "February" "2019" "14:55:18" "+0100" "Florian Weimer" "fweimer@redhat.com" "<87va1pdsc9.fsf@oldenburg2.str.redhat.com>" "19" "Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)" "^Cc:" nil nil "2" "2019021213:55:18" "[oss-security] CVE-2019-5736: runc container breakout (all versions)" (number mark "        fweimer@redh Feb 12   19/756   " thread-indent "\"Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)\"\n") "<20190211130520.xwi6vpay3sc56pza@yavin>" ("<20190211130520.xwi6vpay3sc56pza@yavin>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9525 invoked by uid 550); 12 Feb 2019 13:55:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9504 invoked from network); 12 Feb 2019 13:55:32 -0000
References: <20190211130520.xwi6vpay3sc56pza@yavin>
In-Reply-To: <20190211130520.xwi6vpay3sc56pza@yavin> (Aleksa Sarai's message
	of "Tue, 12 Feb 2019 00:05:20 +1100")
Message-ID: <87va1pdsc9.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 12 Feb 2019 13:55:21 +0000 (UTC)
Cc: oss-security@lists.openwall.com,  dev@opencontainers.org, Christian Brauner <christian.brauner@ubuntu.com>
Date: Tue, 12 Feb 2019 14:55:18 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)
To: Aleksa Sarai <cyphar@cyphar.com>

* Aleksa Sarai:

> +	memfd = memfd_create(MEMFD_COMMENT, MFD_CLOEXEC|MFD_ALLOW_SEALING);
> +	if (memfd < 0)
> +		goto err_binfd;

Is it really necessary to use a memfd_create here?  Do you really need
sealing?  It's a bit odd to add a new system call dependency in a
security update.  The ability fexecve a memfd descriptor is also rather
odd.  I wouldn't have expected execute permissions on memfd descriptors,
so this sounds like a kernel bug (which now can't be fixed).

I saw some other patch with a O_TMPFILE replacement.  Does this really
work?  It's possible to create a new name with linkat, so that's not a
real win security-wise.  Could you just make a copy, under a different
owner, and not care how it is going to be modified?

Thanks,
Florian
