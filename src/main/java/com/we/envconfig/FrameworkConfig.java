package com.we.envconfig;

import org.aeonbits.owner.Config;

@Config.LoadPolicy(Config.LoadType.MERGE)
@Config.Sources({
        "system:properties",
        "system:env",
        "file:${user.dir}/src/main/java/com/we/envconfig/config.properties"})
public interface FrameworkConfig extends Config {
    String browser();
    String environment();
    @Key("${environment}.username")
    String username();
    @Key("${environment}.password")
    String password();
    @Key("${environment}.url")
    String url();
    String labelTextWPWS();
    String labelTextFullName();
    String labelTextAddress();
    String labelTextDetails();
    String labelTextSpouse();
    String labelTextNetWorth();
    @Key("${environment}.apiURI")
    String apiURI();

}
