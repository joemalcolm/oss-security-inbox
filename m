X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["615" "Sunday" "22" "March" "2015" "16:48:51" "-0700" "Russ Allbery" "eagle@eyrie.org" "<877fu8bnks.fsf@hope.eyrie.org>" "13" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032223:48:51" "[oss-security] CVE for Kali Linux" (number mark "        eagle@eyrie. Mar 22   13/615   " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550F2754.5060704@openwall.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F2754.5060704@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4016 invoked by uid 550); 22 Mar 2015 23:49:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3989 invoked from network); 22 Mar 2015 23:49:05 -0000
In-Reply-To: <550F2754.5060704@openwall.com> (Alexander Cherepanov's message
	of "Sun, 22 Mar 2015 23:34:28 +0300")
Organization: The Eyrie
References: <550EE478.70005@redhat.com>
	<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>
	<20150322172300.GA21110@openwall.com> <550F2754.5060704@openwall.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Message-ID: <877fu8bnks.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Date: Sun, 22 Mar 2015 16:48:51 -0700
From: Russ Allbery <eagle@eyrie.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

Alexander Cherepanov <ch3root@openwall.com> writes:

> There are some attacks even if you verify signatures, e.g. serving old,
> known-vulnerable versions. HTTPS can help here (until signatures start
> to be widely accompanied by expiring timestamps or something).

Debian is indeed moving in exactly that direction, using the Valid-Until
attribute of the archive metadata.  This currently isn't (yet?) enabled
for the main stable archive, but is for the unstable and testing archives,
the security archive, and the backports archive.

-- 
Russ Allbery (eagle@eyrie.org)              <http://www.eyrie.org/~eagle/>
