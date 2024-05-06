Received: (qmail 29895 invoked by uid 550); 6 May 2024 21:24:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11480 invoked from network); 6 May 2024 21:04:12 -0000
From: Peter Korsgaard <peter@korsgaard.com>
To: Ben Hutchings via buildroot <buildroot@buildroot.org>
Cc: Ben Hutchings <ben.hutchings@mind.be>,  oss-security@lists.openwall.com
References: <20240411152016.1185109-1-ben.hutchings@mind.be>
Date: Mon, 06 May 2024 23:04:01 +0200
In-Reply-To: <20240411152016.1185109-1-ben.hutchings@mind.be> (Ben Hutchings
	via buildroot's message of "Thu, 11 Apr 2024 17:20:16 +0200")
Message-ID: <87edaey7ni.fsf@dell.be.48ers.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-GND-Sasl: peter@korsgaard.com
Subject: [oss-security] Re: [PATCH] package/skeleton-init-sysv: Set sticky bit on /dev/shm

>>>>> "Ben" == Ben Hutchings via buildroot <buildroot@buildroot.org> writes:

 > /dev/shm is a world-writable directory, like /tmp, and should also
 > have the sticky bit set.  Without this, any user can delete and
 > replace another user's files in /dev/shm.

 > This bug has been present since /dev/shm was added to the skeleton
 > /etc/fstab, but appears to have been fixed for systems using systemd
 > by commit 76fc9275f14e "system: separate sysv and systemd parts of the
 > skeleton" which went into Buildroot 2017.08.

 > Signed-off-by: Ben Hutchings <ben.hutchings@mind.be>
 > Fixes: 22fde22e35f98f7830c2f8955465532328348cd1

Committed to 2024.02.x, thanks.

-- 
Bye, Peter Korsgaard
