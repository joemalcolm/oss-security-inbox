X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["908" "Wednesday" "11" "January" "2017" "04:28:20" "+0000" "Trevor Jay" "tjay@redhat.com" "<20170111042820.GA147@8012b52aa127>" "16" "[oss-security] Re: Docker 1.12.6 - Security Advisory" "^Cc:" nil nil "1" "2017011104:28:20" "[oss-security] Re: Docker 1.12.6 - Security Advisory" (number mark "        tjay@redhat. Jan 11   16/908   " thread-indent "\"[oss-security] Re: Docker 1.12.6 - Security Advisory\"\n") "<CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>" ("<CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25709 invoked by uid 550); 11 Jan 2017 13:58:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18031 invoked from network); 11 Jan 2017 04:30:57 -0000
Message-ID: <20170111042820.GA147@8012b52aa127>
References: <CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Wed, 11 Jan 2017 04:30:47 +0000 (UTC)
Cc: docker-dev@googlegroups.com, oss-security@lists.openwall.com
Date: Wed, 11 Jan 2017 04:28:20 +0000
From: Trevor Jay <tjay@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Docker 1.12.6 - Security Advisory
To: docker-user@googlegroups.com

A FYI for Red Hat and Fedora users: we have rated this CVE as having moderate impact to our users and are currently testing backports of this patch for 1.12.5. More info:

    https://access.redhat.com/ringwraith
    https://bugzilla.redhat.com/show_bug.cgi?id=1409531
    https://access.redhat.com/security/cve/CVE-2016-9962

To mitigate this even without the patch, you can remove `ptrace` from your seccomp whitelist. ACS such as SELinux (not sure about AppArmor) will keep container processes from accessing external file descriptors. Of course, you can prevent these kind of attacks completely (modulo kernel bugs) by never running privileged containers or giving them CAP_SYS_PTRACE in the first place.

Great work on the flaw and patch. An extremely interesting vulnerability.

_Trevor

-- 
Sent from my Casio Loopy.
(Trevor Jay) Red Hat Product Security
gpg-key: https://ssl.montrose.is/chat/gpg-key
