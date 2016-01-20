X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1524" "Wednesday" "20" "January" "2016" "11:18:39" "-0800" "Reed Loden" "reed@reedloden.com" "<CALPTtNX+xVz+Uf=tTUMp7a+NKdUp=CYGip8a5+YcFGwZsXhJ-A@mail.gmail.com>" "42" "[oss-security] CVE request: Two vulnerabilities in git-fastclone ruby gem" nil nil nil "1" "2016012019:18:39" "[oss-security] CVE request: Two vulnerabilities in git-fastclone ruby gem" (number mark "U       reed@reedlod Jan 20   42/1524  " thread-indent "\"[oss-security] CVE request: Two vulnerabilities in git-fastclone ruby gem\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5673 invoked by uid 550); 20 Jan 2016 19:19:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5655 invoked from network); 20 Jan 2016 19:19:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc:content-type;
        bh=MhAomhCpovoZ2vy13ohwcCUfqZ7c4FUv4a5NgeJtawE=;
        b=FVKsTeNzuvPwdG1n5+giy/qtmhSYMCURDDYoMCQQpKlGin/ZyQ1IMR09ZMda3wjM9/
         R5owgSxH5YhwxpMuBLttGQu8oIm60yrKFaIAqUBBP2ie0K82Iqd1ieD20YpeCMY5EDBS
         e97IC26cOXTKPld9BTORnXs2jPYoyR6gP8Dfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-type;
        bh=MhAomhCpovoZ2vy13ohwcCUfqZ7c4FUv4a5NgeJtawE=;
        b=WDbMrpsPSuDy0Z5TxW05tNFfLuwA96SEnzBogwF8Eda6RW0tY9h1h6tFffE8QwVTzY
         5DzkqLa0m7TGQP3rSEAlG5UOa5hniDo7dLsbf73Aih8L2kP0tddU75h4R3UBF444JEMO
         TL3J82zQW55Kkt3uBWciFyU3khMKHIqNfUlENVoddbtKkkg8SnjaaHTHA44tLvqQrgwW
         6F/l7ft1zQ+F7njzrRU3Oes7NFbFx+IauDoLyOJHflVg7QYzZKvWV7SQ2mkzx/sp02FU
         /tRzz8BCiYob0F8CiawnWFfy3yoK0LEBAfa8e8KSa7wMETffVummVqRfVA09b51+fp06
         92Pw==
X-Gm-Message-State: AG10YOSQNEpuFJOmbLNJU93WEkRXS8xsnGvMhSfCQ93XIuwwGoj7wEpoKn/NSmimd1LatyL85SdTCuyft6GvCIxL
X-Received: by 10.182.102.136 with SMTP id fo8mr27387745obb.11.1453317538441;
 Wed, 20 Jan 2016 11:18:58 -0800 (PST)
MIME-Version: 1.0
From: Reed Loden <reed@reedloden.com>
Date: Wed, 20 Jan 2016 11:18:39 -0800
Message-ID: <CALPTtNX+xVz+Uf=tTUMp7a+NKdUp=CYGip8a5+YcFGwZsXhJ-A@mail.gmail.com>
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>
Cc: Blake Burkhart <bburky@bburky.com>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request: Two vulnerabilities in git-fastclone ruby gem

Blake Burkhart (@bburky) recently reported two issues to Square via their
open source bug bounty program (https://hackerone.com/square-open-source)
concerning their `git-fastclone` ruby gem.

git-fastclone is "A git command that uses reference repositories and threading
to quickly and recursively clone repositories with many nested submodules."

Homepage: https://github.com/square/git-fastclone

Download: https://rubygems.org/gems/git-fastclone

* git-fastclone permits arbitrary shell command execution from .gitmodules

  https://github.com/square/git-fastclone/pull/2

  git-fastclone before 1.0.1 uses the git URL provided without validating
  the protocol being requested, which allows for executing arbitrary code
  found in the URL (such as with the 'ext' protocol).

  This is basically the same issue as CVE-2015-7545, just in a different
  client implementation. What's policy here? Should a new CVE be assigned?

  Fixed in v1.0.1. Affects all previous versions.

* git-fastclone permits arbitrary shell command execution via shell
  metacharacter injection into variables/parameters

  https://github.com/square/git-fastclone/pull/5

  git-fastclone before 1.0.5 passes user modifiable strings directly to a shell
  command. An attacker can execute malicious commands by modifying the
  strings that are passed as arguments to "cd " and "git clone " commands in
  the library.

  No CVE has been assigned.

  Fixed in v1.0.5. Affects all previous versions.

Can CVE(s) be assigned, as needed?

Thanks,
~reed
