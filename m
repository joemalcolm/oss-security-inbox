X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1368" "Monday" "12" "April" "2021" "20:25:55" "+0200" "Jochen Wiedmann" "jochen.wiedmann@gmail.com" nil "46" "[oss-security] CVE-2021-29425 (Possible limited path traversal in Apache Commons IO 2.2 to 2.6)" nil nil nil "4" nil nil (number mark "U       jochen.wiedm Apr 12   46/1368  " thread-indent "\"[oss-security] CVE-2021-29425 (Possible limited path traversal in Apache Commons IO 2.2 to 2.6)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-29425 (Possible limited path traversal in Apache Commons IO 2.2 to 2.6)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1733 invoked by uid 550); 12 Apr 2021 18:30:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32511 invoked from network); 12 Apr 2021 18:26:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=y+WtG7eDe5ZA4NaJa70XGFVdYwWkk7NrU4G54iWje3E=;
        b=UlrJ04lv+jVBjD4yPlpp86z6ZUhjsWgmUmRqyOsean65WXvdzh9m284Lsdx0P+++M/
         DMqDlY2QtqRB3NxuGiG1FI2Feeb/LJhwIm9EHZobjlgulj3QO8AJ2TV8VuRsKebzSdHU
         EypqjNcJBaZFK+FtKt2aQ9Kpjtg5AP8rWRd1nQF2qMUbMMa7EtVhZtTNKah/vwzUrOJi
         QCephSddIfAYgdWdBqjM3mW8oGq8ogRn0xhOHXxewuLya8GVUjVmJsYOTB1Tfr4dEU30
         9nNOWBSDIy+UcAeAcp+d1iExYnNjoKDwBGJ87wjrfwpkBvSAjx9PIpFUK6Kvu9FKFJYQ
         SXVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=y+WtG7eDe5ZA4NaJa70XGFVdYwWkk7NrU4G54iWje3E=;
        b=iUp1RnxhWs/D1iSUpH3yQ0zm7puV6PubhiW+Eq7Ctqy0ArBdpSOu6nIMBrwEE1LFRJ
         RR3FYiQAt2lBSQBttfU/Byxg6bjNkOpGie3HDf+zpFYTSXhuWfXiiRYnjewHrR0Y4tM7
         7jYQoo69P9RroQHqBNMgiH5s3b/r6XAIPjOxCSPxBxlF/w0kEcczYKcT/ZaYNuM4te1Y
         34xNd0egoQw2/SFpOhTp4E4mqWImjFwUEaAKq8rGa3mGjpxKtdqEoJeOgjkrc8b/eero
         KNeGEjW8qGciMK2+j53TheHzkk164A8pMkDat7kOPq4PqKOlqAUHRY7rAPUs1rY2Q2bC
         kPdw==
X-Gm-Message-State: AOAM530uWUT/mdmiFgboAyUtRKWKmR7UeOTbjaTqILQTRfwxXsHkdtCh
	VDLQnViJPixRPpRzjPPt7gNduwB3um/LSpoIArd4urwnjctG
X-Google-Smtp-Source: ABdhPJyI1XufjvVDn15NcaLYYjNoc4hdGVo0zsKBN9LDrC2wU9IYqsHV8SU9U4wwaDGJBRnHi8KkTcAFFg4cPVSPsmg=
X-Received: by 2002:a17:906:f2c8:: with SMTP id gz8mr9978103ejb.242.1618251967078;
 Mon, 12 Apr 2021 11:26:07 -0700 (PDT)
MIME-Version: 1.0
From: Jochen Wiedmann <jochen.wiedmann@gmail.com>
Date: Mon, 12 Apr 2021 20:25:55 +0200
Message-ID: <CAF8HOZJj80sVyRL4MWH2YdkY4dfvJ96+85Ms6jywGX9=uiPC3w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-29425 (Possible limited path traversal in Apache Commons IO
 2.2 to 2.6)

Hi,

I'd like to inform you about a possible limited path traversal
vulnerability, that has been detected in Apache Commons IO 2.2 to 2.6.
This is now being tracked as CVE-2021-29425. Fortunately, this has
already been covered in versions 2.7, and 2.8.

On behalf of the Apache Commons team,

Jochen Wiedmann


Description:

In Apache Commons IO before 2.7, When invoking the method
FileNameUtils.normalize with an improper input string, like
"//../foo", or "\\..\foo", the result would be the same value, thus
possibly providing access to files in the parent directory, but not
further above (thus "limited" path traversal), if the calling code
would use the result to construct a path value.

This issue is being tracked as IO-556,IO-559

Mitigation:

Neither the method in question (FileNameUtils.normalize) nor any
methods, that invoke it, do actually access any files. There's only a
string returned, from which a path can be constructed. In other words,
a possible workaround would be not passing any unsafe input to
FileNameUtils.normalize.



Upgrade to Apache Commons IO 2.7, or later, where the same method
returns the value null, as an indication of "invalid input".

References:

https://issues.apache.org/jira/browse/IO-556

-- 

Look, that's why there's rules, understand? So that you think before
you break 'em.

    -- (Terry Pratchett, Thief of Time)
