Received: (qmail 30446 invoked by uid 550); 5 May 2026 18:22:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17501 invoked from network); 5 May 2026 17:58:07 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778003878; cv=none;
        d=google.com; s=arc-20240605;
        b=iwnCg1Xgk8ZIe5Sg8ZHwkUbEZGdDlkNZm9QZkpXDZ67+JMTby6pbouJBSGzTd7auZy
         hLuDuz07Vx6cbjVhGZGZ/vhw/inxFVxqlbfqweHBnKoxnDCyyZ1vPQyzNczBTHOJT1OD
         aqGBNdDj1Th9UYYr4iJFygjTfede7Uk7hlC6eKdjucBgLnGHblMIRFe5T9F4ghozEtS6
         bhvHBpwj4OsVbPfSKDAtZRxN7RLqQyKEzcCqxUQXGxoMJJUoMxA/H2nDz99q1FvcxT18
         6xOpkNI8vb+4en86e0RHM1oATmFVE22ExINlxnDZjiOUrkuhao7qI6mGsEPCqxVwB3MT
         Fe5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=G3rETW5hjb8f2y6I1eyyHMK5jeOBs+MXvpkekB+YPhQ=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=PITyQ2byHwJuH5aWNHT39hDOwchy5vYQwyNeCJyv+ffaa8MTRoegqhUhvugxUSUqRF
         6PdDz0w0mZll234LvO8M7bOkZMuB8tYPiBFAUeRggVcrDXZVeXKIKKrmtnG4va+2VHvf
         V83O1Pq9ZOX+2NrbvsSWkef5LclbqyGvHHsRm63lVXyS/BO5X5Oz+9X5LHvkFFrlogqz
         B8Eep+s+8B5yW2V1Ys4Km3QoDzz/rJrQuyas0N8ojn+IeHi3814tCoQ+oBRyLI7M7Dpa
         vblhTd15vv/4AJpUqjhXxOcNVPEbW8XxvEhvUGO9agVxCCuJq5jz7lte+qi7n8hXm5lG
         7sKg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778003878; x=1778608678; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G3rETW5hjb8f2y6I1eyyHMK5jeOBs+MXvpkekB+YPhQ=;
        b=Gd1dL8iPe0xXJEhxMowpvjNIc8uBrlMMMTKAFl9ojx+2Y47uwwpykeok7fe+yg5VSL
         fkweWBGPCihl1zVI811LnyGAdxvhTCTJLC0r2iVfxSaibOWAgWdOR82tVhMXW2SVo7Zj
         4JMv9b4cWGa2uNIeeTVtyyh3lR6WATONMGLfzRRljG1cRhNafUSNsq9mZY/K1PIfEKus
         aGwOAPkFVy2dIwUInw71tQMj0MczdGu5MnRrXo/TZGQpXfXldEZLRrY2153wQJdWiGZv
         EE565/I/ry6IvbF55ipI06xU8ke0fSxYhMzLk5GNcN+9kw5XZCrGVARk+ufcQxE0soJG
         oXwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778003878; x=1778608678;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G3rETW5hjb8f2y6I1eyyHMK5jeOBs+MXvpkekB+YPhQ=;
        b=RsPTr975aBJ4Ddg6+GqVYBhhuZee6sXDuQir9btXB0xF7yJxitzqPHTK40BwG0eShU
         p4MOMcESbT9NSbbBV8f0bPlLZxn/A0Myppo0B7VbMM3gal+pIGT8AmOs/T0L0RyU5plR
         xADcVijy9GPIjUQD6jRTH9EKV0t5AV6l7l4bX0qJ8fa6p/bIKhrm9eIR5uCUO78a1le1
         t0l8i3YVkEUAgzdMVFyS94AyoceGvTG6SgsRz0F4bXkWhsRjW8FZcziuaT9znTknTQrr
         0EVu3g77uvtPhP1auMuOW8ojq9oCxC4HHPw6kpT8++/8sgJHPTUTKHxW0jVVZ93K9hNo
         Mqqw==
X-Gm-Message-State: AOJu0YyEET9GGyF/jPW0/8ePp3BbM7JvreMgVjbfpwHCzMSXh38uhL0X
	6nHmuJhrkqk0sSKVGOQoKrhUHn/AG6SXBs7QekEhO5pG6HVn4fLIi2gg/ovE8b3nctN6O9dgeYu
	cWpw3dqX49DlPmRXxcwljxQAWYwHKLF/zs9Mb18A=
X-Gm-Gg: AeBDiet5f1yNfw/pC6012Cvm5hcSE/rCW0jmWTiAn01ZjBgC0eHd9gi2LzGdMWT9fwB
	tCJ7kThHx8pZG/B6gYBaYtrkigCvgeJ3MHbdjyBmawijPGLx/9mEjN7KMmGkiGOE35Km1b6Prq3
	Kw2vTlsp9WUGFrH9q41vWGVff0Zl/L+CJ1m7DUHwpUxTIi1agKyBhKCakJTT0X87ROJdVTJJdSr
	mnJT+Osp8TACGXAj11Q+Y0rjP5oldN1fT0IXPVFchdgoAqXCfDaKuuNClXiY2TAhqyHKI2SBD93
	PEQys//7Bd65swk9AE2ZCA74WkhH/Vk2SJJM4Hs/6BPvD6o+iWYomEDyEwRK
X-Received: by 2002:a05:651c:3250:b0:392:4308:b8b with SMTP id
 38308e7fff4ca-393c3ef7988mr1478401fa.0.1778003877548; Tue, 05 May 2026
 10:57:57 -0700 (PDT)
MIME-Version: 1.0
From: Akshat Sinha <akshat.snh@gmail.com>
Date: Tue, 5 May 2026 10:57:45 -0700
X-Gm-Features: AVHnY4LZ_-tSDYF8aOckSEbZp29Cw2wgAs3Za9jKkNLcLBr035ebWlyhs_FbSz0
Message-ID: <CAJNb=Zp7rsHLU6s7KHLO-=DRmFSUz57f0JQqO3rd2BGGAO4wvQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000087d83b065115c9b5"
Subject: [oss-security] vm2: sandbox escape in NodeVM with nesting:true (CVE-2026-44007)

--00000000000087d83b065115c9b5
Content-Type: text/plain; charset="UTF-8"

Package: patriksimek/vm2
Affected versions: <= 3.11.0
Fixed version: 3.11.1
Severity: Critical

vm2 before 3.11.1 is vulnerable to sandbox escape / host OS command
execution when `NodeVM` is used with `nesting: true` and untrusted code.

In the vulnerable case, sandboxed code can `require('vm2')` regardless of
the outer VM's `require` restrictions, including `require: false`, then
create an inner `NodeVM` with attacker-chosen settings and execute
arbitrary OS commands on the host.

The 3.11.1 fix rejects `new NodeVM({ nesting: true, require: false })` at
construction time. The maintainer also notes that `nesting: true` remains
an escape hatch by design; untrusted code should not be run with
`nesting: true` enabled.

References:
https://github.com/patriksimek/vm2/security/advisories/GHSA-8hg8-63c5-gwmx
https://github.com/patriksimek/vm2#5-nesting-true-is-an-escape-hatch
https://github.com/patriksimek/vm2/releases/tag/v3.11.1
https://github.com/patriksimek/vm2/blob/main/docs/ATTACKS.md#attack-category-25-nodevm-nesting-true--require-false-configuration-trap

--00000000000087d83b065115c9b5--
