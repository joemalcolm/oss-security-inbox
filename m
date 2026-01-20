Received: (qmail 15597 invoked by uid 550); 20 Jan 2026 15:33:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16124 invoked from network); 20 Jan 2026 13:31:56 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1768915906; cv=none;
        d=google.com; s=arc-20240605;
        b=IknVzYAhstxh9yOttkSFhPoEmM53wyKHxWyLbKAsKU6qB0eob2x24wNgHgycolUP6z
         EyYSMNZ5vh/4bmnLRik9MLe1/KIPT/B9yFoW1YPCG3UCnGwi0RYaW/Fp4vjOjNOoBtyK
         j0Ji9JtNzDqsCKQCuHtB5MqOz5IZuFWHYuJjp9BXRm9zlbxEKCFbm8trxSJLUAmiP2cE
         i/nafEZQNjtMtmOumTY/rjjeIMekgQBEUbSPOx+k3xoy+Bv0y4Bhpog2DmQ2rpR71ar6
         aaka+aMx9cg+vC0o2sjv11jrgfvX7y39q5oKmIxgsE9OKMt+yRyTLOKYaPSWO4xJE2aG
         +h3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=YpUg3oekPZrAs+aZXJen+i7EpU+kK8tBCPCT2h8xFS0=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=iSu74P14atl6ugtUxzxG4SpfU9Wqpkp1P6uRP2gRCnpLOnvn0bjvD88CrIHdh+H4NF
         wn8o37+9T8hfWcq51HNGPeAgwtEcJp9jvvDi+AdAsZJajHpbEn6NzXnpc08cxXfrrwp3
         BHOb1Afd557vBq5MRu5K1jaJ8fBtzZQv8rrenPpg6UrEbmQlMu6Geez7HUFj9BjSlT4i
         04Fy5B5FEf0gbMvA2Nc/LFc8KKVwJ97wFxeTQjqyrMbN7IszeNIGTb0yLgE10UGS7xkQ
         +k56rktQ+BJwEXML/KwqfX1FHVK7R/2ypXOo40hLCBjGaIc9GZzZ/N9H0oPd0TbKvnbg
         a1ow==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768915906; x=1769520706; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YpUg3oekPZrAs+aZXJen+i7EpU+kK8tBCPCT2h8xFS0=;
        b=YqN3QKODMxCPmjqZYXmPNhQ826zFnuhNmjla4yDw67OdcEwVgIbk4ss5URT4BDjeHJ
         7QVkIjXZ0kDq32bAUEJPHq4FIs8TuY9emoopHiMAk0YAaJB3inQZPuNZh+LTeYn/3fnK
         oFO6ycrDao28Y1WYZ6qjlp4WcKVjeBBgMIdfAWVYs4HrHw41ZeOd8PxMuzBKDQnHjPJe
         JIOZDSTVuO+eX3DnKAzYNAmkzljjKzgWEly1ocpkeLJHatiI7Uj+Fyj9nCAbXghV6k19
         gXgk2AQM/Vb7B2w9sgb0Qf7arqq4pRaBrdCGj1rWFS5LjxW3UqjNhW24IbudsZx0TBp+
         IhaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768915906; x=1769520706;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YpUg3oekPZrAs+aZXJen+i7EpU+kK8tBCPCT2h8xFS0=;
        b=e/88fMi6Q3yJx/B8S/IV+VIsBikmp9n+gc7DP7gMMERlaB9TJwvtF4ny3UGq4QZvS9
         SFvYKt6un1axkYzvMClcTqxQem6s1TIGNaQr9GTeuGq6Gtwk5AjRAs5MXC/85EOaJmiF
         deoXR4lBrm3y9d5xaKCmJOBALv1kTePGmfLKa+/qH5k8auuBzC6S/iVMTcZggLvcfS3X
         2zZCnK1v3kjxySYSclGVKEOomNBvQ/n4ZN+lu20X0dxkTemIq2GQStWTTomsM9CqaSvZ
         7Ha8EVw73TyXZTlvyFx/p5loF/e3Vq8okcIN5AdLDBybXx4S1RPd2Ew9SDokCrcmc116
         ph9g==
X-Gm-Message-State: AOJu0YzAGziWBhtwcw4h2QCjJp78DzPQkzqy5gDLh6uloBOdaBAsHGUd
	EZna0wwiFEng54pUN2LbevJKJ6o4z5ARi3uqyZ9z/PIvTbzBbvgTYd/uUPrYE2C3sD1yV5LkbzN
	9rodkX4eVzmJfX2/iY9ZrCzk55ev+1MV/CQ==
X-Gm-Gg: AY/fxX43hcQivzVtKX+Llq3b1NEXFKCm7TAsZd2WTu0uIvDlKNqbHeCrofM4Iwczh9d
	HhBGf5SWf8REiTm88aqQYkXj1jeKPugAJ/MGwaM3GaZCtaTdTYZTv2CnOUhvEqBn8CCtmU+FxDM
	wVuXvBN45BFvt736L4S0VKXHDZn0RGvCfmLpyMhv0UCHslwFgipxadYjVT3Dx5u3gNIDSS/OqB6
	etBL2HsqRebGfi1dj9uJZvh3tqfWcFmtZ7PtX7QOmdmo70OsHeBY5LRbT7f8m9TBzVUOqt87XAQ
	oEJ4tRe0O4001TvO5tlKJqvMMA==
X-Received: by 2002:a05:7022:6986:b0:11b:b3a1:713c with SMTP id
 a92af1059eb24-1246a958283mr1313215c88.9.1768915905624; Tue, 20 Jan 2026
 05:31:45 -0800 (PST)
MIME-Version: 1.0
From: mohammed gaming 222 <craftmohammed460@gmail.com>
Date: Tue, 20 Jan 2026 15:31:45 +0200
X-Gm-Features: AZwV_QiYEdYC2n5bJq6m14vaInuDGp1bTOWku6erBeYbej1sDACKqbrVDdhJugM
Message-ID: <CACepC7XhXqWh45fOYL-4kdZW-h1jQfMb2b10W38RD9euV1j+OA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000031405d0648d1d467"
Subject: [oss-security] WordPress Plugin "Under Construction & Maintenance Mode": Exposed debug functionality

--00000000000031405d0648d1d467
Content-Type: text/plain; charset="UTF-8"

Hello OSS-Security Team,

I would like to responsibly disclose a security vulnerability identified in
the WordPress plugin *Under Construction & Maintenance Mode*.
------------------------------
Summary

A security issue was discovered in the *Under Construction & Maintenance
Mode* WordPress plugin related to an exposed debug functionality.
The vulnerability allows unauthorized modification of WordPress options,
which may lead to *Stored Cross-Site Scripting (XSS)* in the WordPress
admin dashboard.
------------------------------
Affected Component

   - *Plugin:* Under Construction & Maintenance Mode
   - *Vendor:* WPBrigade / Loginizer
   - *Affected File:*
   lib/wpb-sdk/views/wpb-debug.php

------------------------------
Vulnerability Details

The affected debug endpoint processes POST requests without proper security
controls:

   - Missing authorization checks (current_user_can)
   - Missing nonce validation
   - Direct use of user-controlled input in update_option()

This allows attackers to arbitrarily modify WordPress options.
------------------------------
Vulnerability Type

   - Missing Authorization
   - Missing Nonce Validation
   - Arbitrary Option Update
   - Stored XSS (Admin Context)

------------------------------
Impact

An attacker may:

   - Modify arbitrary WordPress options
   - Inject persistent JavaScript payloads
   - Trigger Stored XSS in the admin dashboard
   - Manipulate site configuration or administrator sessions

------------------------------
Proof of Concept (Code Snippet)

if ($_SERVER['REQUEST_METHOD'] === 'POST'
    && isset($_POST['set_option_name'])
    && isset($_POST['option_value'])) {

    update_option($_POST['set_option_name'], $_POST['option_value']);
}

------------------------------
Affected Versions

   - Versions prior to vendor fix
   (Exact version pending confirmation)

------------------------------
Disclosure Timeline

   - Vulnerability discovered through manual security testing
   - Advisory published through community channels
   - No active exploitation observed at the time of disclosure

------------------------------

Please let me know if any additional information is required.

Kind regards,
*Mohammed Abdallah*

--00000000000031405d0648d1d467--
