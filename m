Received: (qmail 7874 invoked by uid 550); 23 May 2026 00:49:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7758 invoked from network); 23 May 2026 00:28:40 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779496112; cv=none;
        d=google.com; s=arc-20240605;
        b=k/2KkwnGBxFs6ZYo8441yWUmdrII1VDc+uaqZln9VGSoM8OPSedPFu+IHMHmfl5Xo3
         DlkaG30cmgabS6wxLzcEveJVLQGKPkP6hLdMujVNLH4H9IRMnoF/xRmakyMybIiGcKWu
         5acUhk30fPTT09mx5Rn0srYeQZ34vvnYNfbTTCuewhB1XRLj23cmEoeO7NTe2/MxdT6v
         Z5vj8VTkNP0tkjM2Af/cana/uLcwQbJiF4QL2mDAxTAMZyjZPi+cHwxkfB0Hg/nCXr8J
         0lvnGsKDqRDgGEivO1qhqhTdXx5Yh6WVAHb2hKEDAL89T7SQrxWZrCdXzF2UQYb5E7XZ
         TAbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=D2ErjRbjPRvyAvFggB+77boE30iP2LNMfX+u1pdJD7g=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=GFf/CsfQV7bJwYrOJkUuiHECSs+6GVhN1YVzjCuT8nYFOs8S6eaq3sF84BwWxAqk+Y
         xAqCP20xRZhU/fOTJ7RiSCNyJPeZkbPQIU53+XqhJUdH9dhecCz0aTUsGUeaEfOMeMRI
         VLFTLg2upoFlWQbuy/hyf9W3OveTurOnJUjNq8RWuJtX/XtNRw20KU314B1nQTnasD6K
         i+6ybi03gQMsu7YUHSkzbAA/vlydApsNn8Zu+zvthqJwMQgG0Ij2PDelyhWdUhWVSO6y
         pq4+aaFjFFQxSBWzhGcLp5gZDE37FSWQJ1wvu9kyJ9JCI4YHm6D1faxfQ+rbb0Ue2COn
         YgfQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779496112; x=1780100912; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=D2ErjRbjPRvyAvFggB+77boE30iP2LNMfX+u1pdJD7g=;
        b=TZLSFX/jvj4YQDVekJ9c2Kt2Z33HJmvpU04azPiAQ18u7tVmv7AN6ukAAu5YKTJlrF
         gSY+saGTmjXQzXaQPpOjx7kP/qngz+lU+uJqnGa+ZDPvQzlW3xf+6oMGs5RaM41suaEs
         AqG0YMJdufKOWzQsk5id9W/qWr9rD5AJOlbKCDcQyRIVSU8JcmTdWjxX0YHD29faH76G
         fGEaQUbqI3jn7/XCmaiPNTvF4q4iVkaB/nWXbSOVZyCQjYjP7LhHZ8Ffbxy0IhJhkhi7
         1XLQ3NUqP7nP7sBZemPwfON7CYhhsWB6LmTMMwOVlpvQbhU64NxvSu+pSHPCgx0LMPO/
         JS/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779496112; x=1780100912;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D2ErjRbjPRvyAvFggB+77boE30iP2LNMfX+u1pdJD7g=;
        b=fPCPJ/b0NKAx2SNNz6xnp4emeFUElXkY0V+c92fepHUAwf+ypQGWu17q2cF0A/JZ5W
         0rzgX/jbyF66PT3HClwcX6laM3hiyIt7xDGEQ7RNIRoAQ2d+8NE5LCZgGACrjmgJbrQO
         OIhAtnoY2BPzVoRNp0Ktm87jNF5vDE8aOU0ZXtLRjtGC+OJoHPD5Nch/OJ6QYo2kbRVn
         sUaWaoSM8oRqKFErx4cYRP4aamryXeoCo6un5//5kiT3QWIf7rNIDp59wHLNUZ+2/yKl
         arj0Md//t5T6E/hzEU5bOq3eBB97Eem5B/YYFNhC3Za1xlAQ+JDIzo6TNtGWkYooacCV
         eZBQ==
X-Gm-Message-State: AOJu0YzPXGUp00bGvpaR3rTV9ioh3jR2LsNTpsHCmu9plL+4PXBmaIB0
	SzQPrOX6RGmr48CpY19x3jfyYr7LP738nP++oTIYPiKPfsrH1TiZugdBn8mZxIVyY9G2mmzBcF5
	t4Q9okHhtlq//jZKelGxhUV5XBemeqAXalvrC
X-Gm-Gg: Acq92OEw1qgmtf07ZGkQBqifw8z8O8ur79eBNUPWcMNqYPFArLeHF4dLzOb00Gfou4H
	2RsycDa9mm9jOAB2Kk4BLxUFm5Sc6nxUdkPVKa6LEonQqaBZmDCqPY7Vj07VY6kFropGQEC65Xl
	VD2DCxG+UKYsgQ2Z00EDdihqGxVWqc4lt+7JVVJf0qD90ZFayiZktlzUoyt4+3nv/A4a0VJlK+D
	c7Ma2NPYeKilWl7bdEBQ7jSkOB6zLJCRqoa3ePDCoxsBZx9Q4Q9w3IknSkuPDBIjY9ahds+zIA6
	TkNgAMU1rgr6pb0hLk3Os7AxOsraKOtg+85TrH2e15ZcWy4CZHVX3TLrkWZL
X-Received: by 2002:a2e:b8d4:0:b0:395:9ffa:58a0 with SMTP id
 38308e7fff4ca-395d8926071mr20578811fa.12.1779496111380; Fri, 22 May 2026
 17:28:31 -0700 (PDT)
MIME-Version: 1.0
From: Akshat Sinha <akshat.snh@gmail.com>
Date: Fri, 22 May 2026 17:28:20 -0700
X-Gm-Features: AVHnY4IW16rRjh1i3Z4avctAp2w6VstOkiWEvXwto742Suu1aZMYYKK2K5I1WUY
Message-ID: <CAJNb=ZrewJXpaRvMGj563+n3vWEH=Fijy45v52ccmvUKL=N7ng@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000991e6606527139ae"
Subject: [oss-security] CVE-2026-9277: shell-quote before 1.8.4 command injection in quote()

--000000000000991e6606527139ae
Content-Type: text/plain; charset="UTF-8"

shell-quote before 1.8.4 contains a command injection issue in quote()
when applications pass object tokens with attacker-influenced .op values
to quote() and then execute the resulting string through a POSIX shell.

Affected versions: <= 1.8.3
Fixed version: 1.8.4
CVSS v3.1: 8.1 (High)

The issue is caused by quote() escaping .op character-by-character using
/(.)/g. In JavaScript this does not match line terminators, so a newline
in .op can pass through unescaped. In POSIX shells, a literal newline is
a command separator, so attacker-controlled content after it may execute
as a second command.

This requires a narrower integration pattern than ordinary string-based
shell injection: the application must pass object tokens into quote().
However, object tokens are part of the documented API surface, including
via parse(cmd, envFn) when envFn returns an object.

Proof of concept (Node.js, shell-quote 1.8.3):

const { quote } = require('shell-quote');
const s = quote([{ op: ';\nid' }]);
console.log(JSON.stringify(s));
require('child_process').execSync(s, { shell: '/bin/sh' });

In local testing, this produced a quoted string containing a literal
newline and caused /bin/sh to execute `id` as a second command.

The fix in 1.8.4 replaces escaping of arbitrary .op strings with strict
validation and allowlisting of valid operator values.

Timeline:
- 2026-05-09: issue reported
- 2026-05-22: advisory published, CVE assigned, and 1.8.4 released


References:
https://github.com/ljharb/shell-quote/security/advisories/GHSA-w7jw-789q-3m8p
https://www.npmjs.com/package/shell-quote

--000000000000991e6606527139ae--
