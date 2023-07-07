Received: (qmail 25996 invoked by uid 550); 7 Jul 2023 11:56:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7763 invoked from network); 7 Jul 2023 11:22:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688728915; x=1691320915;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4C8DL3F9zFjftHXR/MrRNVwEUjmaB5579xyVOv1pgdk=;
        b=KPSW5o5HxDf3i6D3cBIXySiPQXUk9vOn7AqYf9qXLrREN8Qe13AGCBXKXcmLroOhPU
         i2mRKK3AzoOrfeE0gWUCUOzLDgeYLVUJg2aMVs6tNIfplD6xC68PkT6i1IwKXn7n8KsM
         PQqwnpgyxwHW0WsyUNpHJ7XSWDBCkY6sfb6xatN4gze6a0IlZiaaVF5JJrVvfR7UEVfI
         2nuCg3BNvIeFEcXSM8GTn13BnGw7OXLKBGXL8UCyC3idulbBKkP/0Hot5TZEvShnjjSd
         cK4GRjotAvYcIik73f72d3VioMjoMrGum+PpktimR26IC4XDKHIClsXwJ0iYVAiNIBW/
         /Fhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688728915; x=1691320915;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4C8DL3F9zFjftHXR/MrRNVwEUjmaB5579xyVOv1pgdk=;
        b=HD3FsK7Wf5EfpXVMk228Uxn7RKfFL9PBTZTZOQJfYZBI3eKYq93sTuE/z6HZarAQXv
         oeKsVvGLtna4nzSXIvisDeYH86+A8oAXAQZ+CawEhLuFWlxuA7fnInUWYiNR+tp3ghla
         X8x+N7nYDqfmkwk1b3pt2yfSNgUW/zXIcONIF0a+xkghaqYZMnAgE0kxMhDKbafW3x9W
         NoeV/vSD+MOMwmMX60DT5RsUYtaVW3s9OZs1L9VAAht/2jAlwQdzIJ+ttegHHssgscJk
         hmX65XpsgA30VK0aIQC91zLO+CeFcckY8dvueSiD+IHfqpYKkz18YBmXIEQynkngdpQJ
         TDOw==
X-Gm-Message-State: ABy/qLZh4gKUDM+1rpZKZRUuSrmTTi2jZ0zskBGqjvkgNIkYsurHqzB6
	eXqS+SH+R9+nUUgn7cBPeI2v16Qtb+i9wUr7zA2urSZX7o8=
X-Google-Smtp-Source: APBJJlHjAUIX2fgjeNxPvzKf9DpoMrcwSoHMnhgq1+BITM3QmGzdR7dw7PXyimvf7YtwthdRaFY9wsb0xsLx4UaVL3g=
X-Received: by 2002:a2e:9316:0:b0:2b6:ded8:6fc1 with SMTP id
 e22-20020a2e9316000000b002b6ded86fc1mr3503639ljh.25.1688728914860; Fri, 07
 Jul 2023 04:21:54 -0700 (PDT)
MIME-Version: 1.0
From: Andrea Cosentino <ancosen@gmail.com>
Date: Fri, 7 Jul 2023 13:21:42 +0200
Message-ID: <CAELOW3U5UQsjXcV1Katmq=7bCzHFG90WHgckMXiCXobzN7+nkQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000179d8005ffe3d769"
Subject: [oss-security] CVE-2023-34442: Apache Camel JIRA: Temporary file information
 disclosure in Camel-Jira

--000000000000179d8005ffe3d769
Content-Type: text/plain; charset="UTF-8"

Severity: low

Affected versions:

- Apache Camel JIRA 3.x through <=3.14.8
- Apache Camel JIRA 3.18.x through <=3.18.7
- Apache Camel JIRA 3.20.x through <= 3.20.5
- Apache Camel JIRA 4.x through <= 4.0.0-M3

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in
Apache Software Foundation Apache Camel.This issue affects Apache Camel:
from 3.X through <=3.14.8, from 3.18.X through <=3.18.7, from 3.20.X
through <= 3.20.5, from 4.X through <= 4.0.0-M3.

Users should upgrade to 3.14.9, 3.18.8, 3.20.6 or 3.21.0 and for users on
Camel 4.x update to 4.0.0-M1

This issue is being tracked as CAMEL-19421

Credit:

This issue was discovered by Jonathan Leitschuh of the Open Source Security
Foundation: Project Alpha-Omega (reporter)

References:

https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-34442
https://issues.apache.org/jira/browse/CAMEL-19421
https://camel.apache.org/security/CVE-2023-34442.html

--000000000000179d8005ffe3d769--
