X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["576" "Saturday" "24" "July" "2021" "12:32:34" "-0400" "Michael Orlitzky" "michael@orlitzky.com" nil "17" "Re: [oss-security] Potential symlink attack in python3 __pycache__" nil nil nil "7" nil nil (number mark "U       michael@orli Jul 24   17/576   " thread-indent "\"Re: [oss-security] Potential symlink attack in python3 __pycache__\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Potential symlink attack in python3 __pycache__" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1161 invoked by uid 550); 24 Jul 2021 16:32:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1133 invoked from network); 24 Jul 2021 16:32:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1627144355; bh=bQKvFByrGH0mYgsM5XFQ+6ouMPLP/0UOi2UGfgDuiGI=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=vMfRaKnN7MvjX1qlhVdGeDCTaXK0KScnhgmhXz/ivDv8c0EXg7dE8NW5oV79/pnNm
	 WOV+c7bKzAHqXuSf+pEDeIJ7mqxZMNjK/txlrFbA4cqu3EURqIkUV0qmdhut8gilH9
	 R5lhkjQpuUMyDyv0VeKBnPklvQLGot+3tAks72gk=
Message-ID: <a373710a137a096ee8a530d960481a05566c1bae.camel@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Date: Sat, 24 Jul 2021 12:32:34 -0400
In-Reply-To: <CAGUWgD_tV+cJjM_=TDrcNBhpcZOFm+JR2+Jv1tnpaSeXtM8EfQ@mail.gmail.com>
References: 
	<CAGUWgD_tV+cJjM_=TDrcNBhpcZOFm+JR2+Jv1tnpaSeXtM8EfQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Potential symlink attack in python3 __pycache__

On Sat, 2021-07-24 at 18:33 +0300, Georgi Guninski wrote:
> Not sure if this is vulnerability, but it looks like
> classical symlink attack.
> 
> In python3, if a script in directory DIR1 does "import another",
> then python3 creates directory __pycache__ in DIR1 and puts
> some files in __pycache__.
> 
> According to our tests, if DIR1/__pycache__ is symlink to something,
> then python3 follows the symlink.

When subdirectories of DIR1 are writable by anyone other than the
person running the script, you have a bunch of problems:

  https://bugs.python.org/issue16202


