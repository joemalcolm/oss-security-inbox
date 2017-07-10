X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1018" "Monday" "10" "July" "2017" "10:27:37" "-0700" "Sailesh Mukil" "sailesh@apache.org" "<CA+LM4MvaXPq4yO0iS0RSMcZorjWwPtexj0L4ozJ7jPRZqxC4ug@mail.gmail.com>" "41" "[oss-security] Fwd: [SECURITY] CVE-2017-5652 Apache Impala (incubating) Information Disclosure" "^Date:" nil nil "7" "2017071017:27:37" "[oss-security] Fwd: [SECURITY] CVE-2017-5652 Apache Impala (incubating) Information Disclosure" (number mark "        sailesh@apac Jul 10   41/1018  " thread-indent "\"[oss-security] Fwd: [SECURITY] CVE-2017-5652 Apache Impala (incubating) Information Disclosure\"\n") "<CA+LM4Mt5Nk_qJom7YhKaZrLQArqWWY=ofUDK7h+MM7mmOVhp_w@mail.gmail.com>" ("<CA+LM4Mt5Nk_qJom7YhKaZrLQArqWWY=ofUDK7h+MM7mmOVhp_w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11841 invoked by uid 550); 10 Jul 2017 17:33:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7923 invoked from network); 10 Jul 2017 17:27:51 -0000
X-Gm-Message-State: AIVw113uc/sN3yKViAQCEfxYFmBHgRIDsZgyRiB+xBwllPb/G9Svdewa
	kUgFnGxtw8aHoxwGuaObRGAdWu5pFA==
X-Received: by 10.55.36.141 with SMTP id k13mr5365502qkk.64.1499707657646;
 Mon, 10 Jul 2017 10:27:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+LM4Mt5Nk_qJom7YhKaZrLQArqWWY=ofUDK7h+MM7mmOVhp_w@mail.gmail.com>
References: <CA+LM4Mt5Nk_qJom7YhKaZrLQArqWWY=ofUDK7h+MM7mmOVhp_w@mail.gmail.com>
X-Gmail-Original-Message-ID: <CA+LM4MvaXPq4yO0iS0RSMcZorjWwPtexj0L4ozJ7jPRZqxC4ug@mail.gmail.com>
Message-ID: <CA+LM4MvaXPq4yO0iS0RSMcZorjWwPtexj0L4ozJ7jPRZqxC4ug@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a1143219c337a370553f9e61c"
Date: Mon, 10 Jul 2017 10:27:37 -0700
From: Sailesh Mukil <sailesh@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fwd: [SECURITY] CVE-2017-5652 Apache Impala (incubating) Information Disclosure
To: oss-security@lists.openwall.com

--001a1143219c337a370553f9e61c
Content-Type: text/plain; charset="UTF-8"

CVE-2017-5652 Apache Impala (incubating) Information Disclosure


Severity: High


Versions Affected:

Apache Impala (incubating) 2.7.0 to 2.8.0


Description:

During a routine security analysis, it was found that one of the ports sent
data in plaintext even when the cluster was configured to use TLS. The port
in question was used by the StatestoreSubscriber class which did not use
the appropriate secure Thrift transport when TLS was turned on. It was
therefore possible for an adversary, with access to the network, to
eavesdrop on the packets going to and coming from that port and view the
data in plaintext.


Mitigation:

Users of the affected versions should apply the following mitigation:

 - Upgrade to Apache Impala (incubating) 2.9.0


Credit:
This issue was identified and reported responsibly by the Cloudera security
team.


References:
[1] https://issues.apache.org/jira/browse/IMPALA-5253

--001a1143219c337a370553f9e61c--
