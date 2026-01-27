Received: (qmail 17594 invoked by uid 550); 27 Jan 2026 17:18:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19815 invoked from network); 27 Jan 2026 15:33:45 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1769528016; cv=none;
        d=google.com; s=arc-20240605;
        b=BYwJH9/nDOBbTAWvZdC3vmQwwaZ2P5LBhbRvDqLJ+ej4fu6j+PUFnLcEUdiBPZa8rd
         VNo7hUKTFmAJeynZWZO/KaSZ9FqqoQDmOLyh8PiPFDKz0q/RJdbEOxSOfoUNTjRs8tAj
         BrN1ArYFus7A/ib8vvx5W9y8RitfmdJAvP3639R9YX/Mp92L5oBtgr56gGcPdex8Ijz7
         CbBZIem1LySn7hmo7drcTG4pZRDcRS72CMUytUPYwPFMTCf1pjj1lUPJK9hBUXVHm1+y
         B+h0Rfr60b4hi9cz/yMnN1UNfhtr6IJpWvfSuuMxetZVGnXdthZ/Z+7RAMiJFl+T9CXG
         SRoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=03mvMvvm6vhkIESjcHiCixQRpsxkQ7BZGUIS6tJZnF8=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=WRqOlY1wi6hBWPxn/GP6wOmqEC2wvONHNo1yR+gB/Rclbwipf/V4pTeYF+8X36ay6d
         caMqlKJ/+/PDKsvYquloJymGqOTySn9vOvuuU1ySu+X+i7ACMGA7OOrX7oxL6YmfwY8u
         5sMM/TI79LGBLDFuaAHAds8mU88Vcn1iRtn70qqvwJ/B+WF2h2dncmfeFQyGOVqqXT9u
         2P9p7NubDbgcKrHrkvDhadByDqAM5meREwod/4OtN8n71hh6REBwkAiUcAMd3Z+5f19R
         WDoVEE0PgBMyuy8+ZuyJ1tKOtV0maVvKQhaiBXC2CX9+7YFm+KfOM8kOgrnBYmkoTYXL
         zk5g==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769528016; x=1770132816; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=03mvMvvm6vhkIESjcHiCixQRpsxkQ7BZGUIS6tJZnF8=;
        b=VCiv4v88YHVaPdT+Ujmo8YaKs+NCVXB9XnJU0gi5l+V8WODr6luFbLXG3dl46CyTxg
         bGpCkxEljTK0Gz04IZyrB2uwYhOSyyhWZg3zQvRZykfisB9/jtZCIoifMd/5NBnQotNV
         D/YYpJnp+giOtRtObCbxnvlgIhKSrpIov4sBY42Jwd7YiRdJxYiz2gNORV9P9p0Gv+9O
         UoSWvG5WZ0QQEIHEX9yPzZ0KCUyzTlvLG2vNDXxWJHcO+1Iy9IRDkQNRgz+ZUmfUR1AV
         tjoDte2lQ8F1nEcxSlJEqrbCiB3q97sqMjpVmVq7XXYPB43Y5WNBQv6fys0GFkrhCW0X
         a6XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769528016; x=1770132816;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=03mvMvvm6vhkIESjcHiCixQRpsxkQ7BZGUIS6tJZnF8=;
        b=cn6oNOgKbgIKGNGahzaWjGON0Jg1VtF/gXVMqdjcuOgHwy0dpwcguS7duce6567EPR
         Je8Ye+ilj4x4sukvZl8IGlhYdOSpvLSlm27EOrlTrjlXy/ACpiNBG8Gu7ucZTu2a/q9a
         PigvARg7nfaNnM/diUjCyHOe2mm88ZzevCjR7l6Hb3s23ca1xbY/4qGBAu7Av08uMYi4
         i1rTeAbqcQTRJj/TFdN8xv39d9kouqLSWawj0kZO8zFEsIysbasKlzFeEz+gSyPl512A
         UoglpWtfyBmZNpDIW3wYAjwb7nj7cdu+vnnG9JqMTUXThW+fQT+PWH493breBJc97IHM
         xuMw==
X-Gm-Message-State: AOJu0YwpQJebEPUoARAHLTXObaZqKSJqJqPhuEuiHXWkVeFNFis/i6Bt
	j5ixzzsQdC0oKgt62g72HUA0HFXBp8HnDYQ6du/nC9oUJF+Xcwy58P1i/GwP+vcHDvXWehEYuyb
	gPLjS2smVC6aZjS4kUu169M0Sdencq2LoBxB28Uyefg==
X-Gm-Gg: AZuq6aI1cefoAzA4CpcWGTsP4GJSqCpNePICu8nQnmi5JXlmSWO/huKk1i8Say31/7k
	CohijmKCRh4Ar8TwbMJ7QBt/b8061JPNR+zbEJyqRgFgZimqECtmBrvvZ6BeqI1vi17CFTjqjrr
	2Ia502E44mNn5EDLmk8926qNCaLXqiB6WIM1y0OiN4NIV7o0JlauYwOowjRQ9ScuUHfPUzrKgNV
	q/i0bbbxvfc8Fpe1MkGjBmIbpevY/P0PY2STM8jkS0hokdXjqM3dqTkIhenQTeUOKYaWmBt
X-Received: by 2002:a05:651c:e0a:b0:37f:c5ca:709c with SMTP id
 38308e7fff4ca-3861ca80c2cmr6218691fa.7.1769528015159; Tue, 27 Jan 2026
 07:33:35 -0800 (PST)
MIME-Version: 1.0
From: cyber security <cs7778503@gmail.com>
Date: Tue, 27 Jan 2026 15:33:23 -0800
X-Gm-Features: AZwV_QjPVdmJGysQ8vr57cBMj7_HgJ4ld95nZ9NUn4MJoQBsdMCR1xXbG04BdcA
Message-ID: <CAPmip_w_x-4qSOH-8TAUH9vtz6M+oh+fCcwptqsp7zqj6OBmpQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Clarification: rbash escape via history built-ins

Summary:
Restricted Bash (rbash) blocks output redirection to prevent file modification.
However, history-writing built-ins (`history -w`, `history -a`) can overwrite
startup files such as .profile if the restricted user is left in $HOME.
This allows PATH resets and escape from confinement.

Steps to reproduce:
1. Start rbash in $HOME with writable .profile.
2. Run: history -w .profile
3. On next login, .profile is sourced, PATH is reset, confinement is broken.

Discussion:
The Bash manual notes administrators must configure restricted environments
carefully (unwritable $HOME, different working directory, restricted PATH).
However, this particular escape vector is not documented in common guides
(e.g., https://0xffsec.com/handbook/shells/restricted-shells/).

Recommendation:
While consistent with current design, administrators should be aware that
history-writing built-ins can modify files in the current directory.
Restricted environments should ensure $HOME is unwritable or place users
in a safe subdirectory.

References:
GNU Bash manual:
https://www.gnu.org/software/bash/manual/html_node/The-Restricted-Shell.html

-- RelunSec
