X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2483" "Tuesday" "11" "February" "2020" "19:27:18" "+0000" "Ibrahim el-sayed" "i.elsayed92@gmail.com" nil "73" nil "^Date:" nil nil "2" nil nil (number mark "        i.elsayed92@ Feb 11   73/2483  " thread-indent "\"[oss-security] Potential regression and/or incomplete fix for CVE-2017-12762\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Potential regression and/or incomplete fix for CVE-2017-12762" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18110 invoked by uid 550); 11 Feb 2020 19:28:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18086 invoked from network); 11 Feb 2020 19:28:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=KMYOl2XW+c8Y5Lu/fYdIVJA8SlCPCTKxEkvIClJTOAY=;
        b=YyIWI1XH/IKN5silzq9nbgxf5mBi+Z8sgSkaH2cHrgQDJu7xuXnWZvzIhYF4LRgLAm
         m7aC+PJkM1aApBnWC3+1Sjtof+vNbDNhI9PMyjDjHrXFAk7vDejkyOQEzFqKE52X/iIQ
         RPO9Q72EY+6YAwiKkH3spuTMXdrHDVM1bCOmToLG3stjUdhtw7RcyrcIuGGvnGJ6695l
         wg6Udx6wCNFxSOuJGpr1yVfc0vB9NLwgqN673OsX5JJJfvNRb6PHNNfCoRA4sM0e2TPa
         +GMGmgW2s0bnSkgTmsRxxvh4eH1y8CFJfwELYM7EV4UFyW0qsL+32NnifQAtdo4UBWuJ
         /GNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KMYOl2XW+c8Y5Lu/fYdIVJA8SlCPCTKxEkvIClJTOAY=;
        b=pOviP7Pzz3ghRqZtTE8fkpI5kCj+6Z4pWMTwd2wrYONkNrERXwdf7EPoA1HdVdfqDG
         h+lm1oVD3RG9klVFI13Foon8o5+FUkLfr/Ag0OWU+zc+Rp5VBVSxI0363G+p+BecKsUL
         YzxEyLIeyszYZCK3X46Z4QeZN0rt65Fkh69e7fSnc3tpzfqz+OQK2Jx4WDzKigJ+eO2G
         nfcGoI8BVIhRYdGAr+/DecC6YSDhR3c744tBK4jMBYaGYSePF09ixsBCiTwe2rwr4vUn
         g4FypsuPMzXmXkg3SOzcDok8ztct12va31DPSlM3qwvdGtS8g4YeicNrTZrbBy+GGvBD
         Subg==
X-Gm-Message-State: APjAAAXVzFDAkprV97Uo2QIvWrJ7BX7jAdWzTEX5qZo3lFjvX46kaCfu
	nv0EhqQO5S/WyVmEoG/EQ+44D7Gt2LoQBEMAZ2JAdHfv0ks=
X-Google-Smtp-Source: APXvYqxAya9oD43w6ib+YlOZVQ0C9vVh+CQTvBmrTQX4sFVTIEPgNfNLtf945SZ/J1eascbyZkGPHlcf3ZA89Y6yVv8=
X-Received: by 2002:a1c:a752:: with SMTP id q79mr6896980wme.64.1581449274854;
 Tue, 11 Feb 2020 11:27:54 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAJvHH_QwWT5HBMXEH8hVgXxm8xCYzhJfRTWAijAr0LLWQn4gdg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000422f2f059e51da48"
Date: Tue, 11 Feb 2020 19:27:18 +0000
From: Ibrahim el-sayed <i.elsayed92@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Potential regression and/or incomplete fix for CVE-2017-12762
To: oss-security@lists.openwall.com

--000000000000422f2f059e51da48
Content-Type: text/plain; charset="UTF-8"

Hello,
I stumbled upon CVE-2017-12762 which has a CVSS score of 10 and I think the
patch is incomplete and it might have regressed in the stable version. I am
probably wrong hence this email to see if anyone familiar with this CVE and
the fix and tell me if I am wrong.

## Incomplete patch
The patch can be found in
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9f5af546e6acc30f075828cb58c7f09665033967


This is the vulnerable piece of code
```
char *
isdn_net_newslave(char *parm)
{
    char *p = strchr(parm, ',');
    isdn_net_dev *n;
    char newname[10];

    if (p) {
        /* Slave-Name MUST not be empty or overflow 'newname' */
        *if (strscpy(newname, p + 1, sizeof(newname)) <= 0)*
            return NULL;
        *p = 0;
        /* Master must already exist */
        if (!(n = isdn_net_findif(parm)))
            return NULL;
        /* Master must be a real interface, not a slave */
        if (n->local->master)
            return NULL;
        /* Master must not be started yet */
        if (isdn_net_device_started(n))
            return NULL;
        return (isdn_net_new(newname, n->dev));
    }
    return NULL;
}
```

I think it is incomplete and can lead to reading out of bound since it does
*not* check if the src buffer (p) in this case has 10 bytes at least. The
fix assumes p has 10 bytes and copies that into newname. The fix
uses strscpy (
https://github.com/torvalds/linux/blob/cc12071ff39060fc2e47c58b43e249fe0d0061ee/lib/string.c#L180)
which
based on its code it starts copying from count and decrements to zero.
which in this case if param is a string similar to "aa,", then p will point
to the last byte of the string, strscpy will copy from p+1+sizeof(newname)
= p+1+10 -[to]-> p+1 which would allow reading 10 bytes after the buffer p


I do not know if param can end with "," or if there is any validation
checks that it does not end with "," hence this might not be a bug but only
bad practice.


## Regression
I looked quickly into latest version for the kernel v3.16.81 and it seems
that the patch was probably reverted as the code matches exactly to the
vulnerable version to the CVE (
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/isdn/i4l/isdn_net.c?id=v3.16.81#n2646
)
Not sure if the fix was reworked but wanted to surface that issue as well



Ibrahim

--000000000000422f2f059e51da48--
