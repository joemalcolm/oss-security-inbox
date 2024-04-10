Received: (qmail 15543 invoked by uid 550); 10 Apr 2024 12:11:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31839 invoked from network); 10 Apr 2024 12:03:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1712750622; bh=lTl84K3MG4opsaM5R8fAZK9h7hi1aGd6gIu208zTUsA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 From;
	b=OrubF5CknGLUNPgI5SH5s4AQygqQelFheL+R+kL60pBvx/yfkjeRdI3viKLuaRZkO
	 +xNCIJxCxwMIQhVMDjN9mZP4X6NufCQF1NZSMjrnOSSL2Tp5w14cDcrX6umiLllY7M
	 igik53y3BnKvNQqszoRf1fypqYlPeGR52NKvkC5+j9cUfSp1E9h3IMU9H9ou6YolCX
	 g6/tqRkWMZDwBvsTHG0aZiX2FoltWVzU/UL4tJKmEOf9/OWONhTdfst8u4+tKEz6e7
	 GPZFy2GyX1NqDWSOyWdAtQjkKFMbXshDbIk7ja9Ufq43nmUSwKG06hlnbQsPqaATCX
	 U6c88J391WFNw==
From: Ihor Radchenko <yantar92@posteo.net>
To: Sean Whitton <spwhitton@spwhitton.name>
Cc: emacs@packages.debian.org, emacs-devel@gnu.org,
 oss-security@lists.openwall.com
In-Reply-To: <87bk6he8h4.fsf_-_@melete.silentflame.com>
References: <874jccjpvy.fsf@melete.silentflame.com>
 <87y19nu22i.fsf@localhost> <87bk6he8h4.fsf_-_@melete.silentflame.com>
Date: Wed, 10 Apr 2024 12:04:06 +0000
Message-ID: <87o7ahe85l.fsf@localhost>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Is CVE-2024-30203 bogus? (Emacs)

Sean Whitton <spwhitton@spwhitton.name> writes:

> Hmm, thank you, but let me ask a follow-up question: do you agree with
> me that there is only one security flaw covered by these two CVEs, and
> CVE-2024-30203 is the superfluous one?

Yes, CVE-2024-30203 title is superfluous.
And CVE-2024-30204 title is not accurate - it only applies to
certain attachments with specific (text/x-org) mime type.

-- 
Ihor Radchenko // yantar92,
Org mode contributor,
Learn more about Org mode at <https://orgmode.org/>.
Support Org development at <https://liberapay.com/org-mode>,
or support my work at <https://liberapay.com/yantar92>
