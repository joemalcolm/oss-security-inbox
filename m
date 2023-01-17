Received: (qmail 23826 invoked by uid 550); 17 Jan 2023 17:13:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15959 invoked from network); 17 Jan 2023 17:05:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=diag.uniroma1.it; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ItAyMhneyYyBAdMm4vVyA+V9VYhqLWT1xURzpy2bAcQ=;
        b=bcmPkPU+NbPBJc2V5qAO1oTdb4pz7d+wAElGcD/GAHizw6t4jH2tJMsNlZGftG/Ol+
         akNfI0b+zQwIaYKU9+zFO5itXd5HfOYW+wAZsYRS1oq5SOyqYGqtiHQnktHPKr5WmDOv
         2f0l+t/2vqjzegGIKIEqqCeQZA0wfyUpZW1HI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ItAyMhneyYyBAdMm4vVyA+V9VYhqLWT1xURzpy2bAcQ=;
        b=iVOomitRzFCowFmX+VVJDdXLWdEi/wv+UjxUXViUnFiNeHQFVUn1X9vM6ar631Cn4U
         ocHZaiYhhBGL5UWKkrnyhH1IYSNkIeBD9Y72a4CFF9LeBgzR/EA283bKBxIIPpRbPt9e
         0e//yR1o3kyyODhjJpt4NdZGuyViwA8Yl7R6qXIwF65U3/ouUznSKJsdvCf6W8UZGXZR
         0Snqx7QQn1PGMQZbkHIpPjIPnGgFHfAQ4/R7nQteRN3jiW4QrI14qF3x1zcVBhW4LCTw
         w0VaWEYpgg69WNBlCVCb4k+kFN3zgKUErShxur0VPnYujwhkyi/oj1IbyuB0GKoGFtBG
         ebNg==
X-Gm-Message-State: AFqh2krhxzcSB8pBk1y0juOPTezI8xytiQPZysyOJx3eH0Vfx5smkiFk
	ScIWCOJ4bSxO50T+6lnlliiStbvnjyn01PElnoomjy69BspA1re4
X-Google-Smtp-Source: AMrXdXtYQmaFsjmprzTIrhchS7qp57/YumQXLuQlPGEg/A8T6sa6gFSHveQQ17M1it0F9tCNWbbdw9ruNArcAmwoyVo=
X-Received: by 2002:a05:6402:1106:b0:46c:76da:b58b with SMTP id
 u6-20020a056402110600b0046c76dab58bmr354623edv.116.1673975141197; Tue, 17 Jan
 2023 09:05:41 -0800 (PST)
MIME-Version: 1.0
From: Pietro Borrello <borrello@diag.uniroma1.it>
Date: Tue, 17 Jan 2023 18:05:30 +0100
Message-ID: <CAEih1qXOiRzcGgLeyFtQ5C04_gi5FSFHq6qJ37Tqtg=EUS8bAw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux Kernel: hid: type confusions on hid report_list entry

Hi all,

We found potential misuses of list_entry() on lists in hid driver
code that are not checked, specifically hid_validate_values() in
drivers/hid/hid-core.c and bigben_probe() in drivers/hid/hid-bigbenff.c.
Issuing a list_entry() on an empty list causes a type confusion making
the list_entry point to the list_head itself.
The most impactful seems the missing check for an empty list in
hid_validate_values() which is supposed to check the validity of the
reports themselves, potentially affecting all the drivers that rely on it.

The problem is caused by the driver's assumption that the device must
have a valid report_list. While this will be true for all normal HID
devices, a suitably malicious device can violate the assumption.

At a first glance, it may seem that the patches have security implications.
However, when plugging a device which provides a descriptor with no output
report, the type confusions will create a fake struct hid_report*
which points to ((struct hid_device *)hid).report_enum[type].report_list.
This, by chance, makes the type confused structure to span
the `struct hid_report* report_id_hash[256]` array in the
((struct hid_device *)hid).report_enum[type] field.

Then, due to their semantics hid_validate_values() will check
(report->maxfield > field_index) on the type-confused report,
and the maxfield field happens to overlap on the
report_id_hash[] array in the report_enum[type] field
which are all NULL since we provided no reports.
Similarly, for bigben_probe(), the confused report entry is
used in the bigben_worker() function which checks
(report->field[0] != NULL) that, again, overlaps with a NULL
pointer.
It seems there is a commit (918aa1ef104d: "HID: bigbenff: prevent
null pointer dereference") which added the check for report_field
being NULL to bigben_worker() to prevent crashing, but without
checking the actual root cause.

Thus, while being type confusions bugs, they are not exploitable.
The list checks should be added also to prevent future exploitability
if the shape of the structure changes (e.g., structure layout
randomization), and they do not overlap anymore with NULL pointers.
In this case, it is not exploitable just by the pure chance of struct
member ordering.

This post has been written in accordance with linux-distros rules to
which we disclosed the initial findings of the potential vulnerabilities.
as even if the bugs seem not exploitable, the wider community on
oss-security might see how the issue does have security relevance.

We submitted patches to fix the issue by checking that the lists
are non-empty before allowing them to be used:
https://lore.kernel.org/all/20230114-hid-fix-emmpty-report-list-v1-0-e4d02fad3ba5@diag.uniroma1.it/T/


Best regards,
Pietro Borrello
