<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" simplifyDrawingTol="1" version="3.22.9-Białowieża" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" symbologyReferenceScale="-1" simplifyDrawingHints="0" simplifyMaxScale="1" readOnly="0" labelsEnabled="1" styleCategories="AllStyleCategories" simplifyLocal="1" minScale="100000000">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal limitMode="0" durationField="fid" durationUnit="min" startField="" startExpression="" endExpression="" endField="" accumulate="0" fixedDuration="0" enabled="0" mode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 symbollevels="0" referencescale="-1" forceraster="0" type="RuleRenderer" enableorderby="0">
    <rules key="{633cf82a-13c4-4235-ae6f-d6f486c35661}">
      <rule symbol="0" key="{09bf7327-890f-451c-a72f-bb518ae5b07f}" label="Institutional Living Quarter">
        <rule symbol="1" key="{69dad95d-0e35-4819-a231-48f5f74f0480}" filter=" &quot;BLDG_TYPE&quot; = '07_INSTITUTIONAL LIVING QUARTER'" label="ILQ (Large)" scalemaxdenom="2500"/>
        <rule symbol="2" key="{808b2395-e2ed-494e-bfb6-11f1a5707c2a}" filter=" &quot;BLDG_TYPE&quot; = '07_INSTITUTIONAL LIVING QUARTER'" label="ILQ (Medium)" scalemindenom="2500" scalemaxdenom="5000"/>
        <rule symbol="3" key="{3533268f-8bd5-4e34-bd95-3c0692889d29}" filter=" &quot;BLDG_TYPE&quot; = '07_INSTITUTIONAL LIVING QUARTER'" label="ILQ (Small)" scalemindenom="5000" scalemaxdenom="250000"/>
      </rule>
      <rule symbol="4" key="{8b086843-689a-469e-8b22-d8258f6331cc}" label="Existing Building">
        <rule symbol="5" key="{870ba771-bef3-4a85-b793-372ea253f543}" filter="&quot;BSN&quot; > 00000 AND &quot;BSN&quot; &lt; 40000" label="HPQ Form 2 (Large)" scalemaxdenom="2500"/>
        <rule symbol="6" key="{a16b0f6c-ea7a-4f66-984a-87740957eb53}" filter="&quot;BSN&quot; > 00000 AND &quot;BSN&quot; &lt; 40000" label="HPQ Form 2 (Medium)" scalemindenom="2500" scalemaxdenom="5000"/>
        <rule symbol="7" key="{65e6fc4c-78d3-4bec-b2d5-47e8370f3d39}" filter="&quot;BSN&quot; > 00000 AND &quot;BSN&quot; &lt; 40000" label="HPQ Form 2 (Small)" scalemindenom="5000" scalemaxdenom="250000"/>
      </rule>
      <rule symbol="8" key="{0fa201b8-d034-499c-9ab2-545999231cc1}" label="New Building">
        <rule symbol="9" key="{5452ff3d-3150-406f-b7c4-0c4c2a11e5b0}" filter=" &quot;BSN&quot; > 70000 AND  &quot;BSN&quot; &lt; 80000" label="HPQ New Building (Large)" scalemaxdenom="2500"/>
        <rule symbol="10" key="{434a56f0-3f1d-4694-b441-efd2a11f6f38}" filter=" &quot;BSN&quot; > 70000 AND  &quot;BSN&quot; &lt; 80000" label="HPQ New Building (Medium)" scalemindenom="2500" scalemaxdenom="5000"/>
        <rule symbol="11" key="{9aaf15c0-a0ca-4b2d-84ad-dd722ed94ecd}" filter=" &quot;BSN&quot; > 70000 AND  &quot;BSN&quot; &lt; 80000" label="HPQ New Building (Small)" scalemindenom="5000" scalemaxdenom="250000"/>
      </rule>
      <rule symbol="12" key="{ac020fb5-8534-4928-9d6e-5fc587776a5c}" label="Relocation Site">
        <rule symbol="13" key="{58124e6c-84dc-4025-bf5b-08871e7b765f}" filter=" &quot;BSN&quot; = 55555" label="Relocation (Large)" scalemaxdenom="2500"/>
        <rule symbol="14" key="{cb1593d2-4658-4fa0-913f-2df19691bccc}" filter=" &quot;BSN&quot; = 55555" label="Relocation (Medium)" scalemindenom="2500" scalemaxdenom="5000"/>
        <rule symbol="15" key="{ae7eff3a-25fe-4d36-9eee-805e195bde3d}" filter=" &quot;BSN&quot; = 55555" label="Relocation (Small)" scalemindenom="5000" scalemaxdenom="250000"/>
      </rule>
      <rule symbol="16" key="{086c4765-96ba-4d00-ad9b-9484434fee6f}" label="Homeless">
        <rule symbol="17" key="{d09b587e-02f3-4d35-97f9-edba6ee2f943}" filter=" &quot;BSN&quot; = 60000" label="Homeless (Large)" scalemaxdenom="2500"/>
        <rule symbol="18" key="{0add64c1-af0e-415d-bf9b-6cc4a295b542}" filter=" &quot;BSN&quot; = 60000" label="Homeless (Medium)" scalemindenom="2500" scalemaxdenom="5000"/>
        <rule symbol="19" key="{d344b88d-9a03-446a-990e-6dcbafa9a01b}" filter=" &quot;BSN&quot; = 60000" label="Homeless (Small)" scalemindenom="5000" scalemaxdenom="250000"/>
      </rule>
      <rule symbol="20" key="{63010e5b-5827-4fed-821e-aa688d1e6051}" label="Demolished/Destroyed Building">
        <rule symbol="21" key="{e6277ef4-87e6-44dc-b543-0d91fd1af402}" filter="&quot;BSN&quot; = 00000" label="Demolished/Destroyed (Large)" scalemaxdenom="2500"/>
        <rule symbol="22" key="{2bb31982-61cd-4143-9d14-a7ab0c8d5eba}" filter="&quot;BSN&quot; = 00000" label="Demolished/Destroyed (Medium)" scalemindenom="2500" scalemaxdenom="5000"/>
        <rule symbol="23" key="{81625760-ced4-486f-ad44-42199c7bb4d3}" filter="&quot;BSN&quot; = 00000" label="Demolished/Destroyed (Small)" scalemindenom="5000" scalemaxdenom="250000"/>
      </rule>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" force_rhr="0" alpha="0" type="marker" name="0">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="145,82,45,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="145,82,45,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="255,255,255,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="triangle" type="QString" name="name"/>
            <Option value="0,-0.96666666666666656" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="0,0,0,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="6" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="triangle"/>
          <prop k="offset" v="0,-0.96666666666666656"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="6"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="10">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="0,179,179,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="3" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="0,179,179,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="11">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="0,179,179,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="0,179,179,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="0" type="marker" name="12">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="125,139,143,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="125,139,143,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="13">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="202,21,7,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="square" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="3.4" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="202,21,7,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3.4"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="14">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="202,21,7,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="square" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="3" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="202,21,7,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="15">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="202,21,7,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="square" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="202,21,7,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="0" type="marker" name="16">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="125,139,143,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="125,139,143,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="17">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="51,160,44,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="diamond" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="3.4" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="51,160,44,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="diamond"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3.4"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="18">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="51,160,44,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="diamond" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="3" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="51,160,44,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="diamond"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="19">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="51,160,44,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="diamond" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="51,160,44,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="diamond"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="2">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="255,255,255,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="triangle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="1,1,1,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="4" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="triangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="1,1,1,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="0" type="marker" name="20">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="125,139,143,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="125,139,143,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="21">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="45" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="139,140,140,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="cross_fill" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="253,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="5" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="45"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="139,140,140,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="cross_fill"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="253,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="22">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="45" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="139,140,140,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="cross_fill" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="3.5" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="45"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="139,140,140,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="cross_fill"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3.5"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="23">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="45" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="139,140,140,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="cross_fill" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="3" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="45"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="139,140,140,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="cross_fill"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="3">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="255,255,255,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="triangle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="4,4,4,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="triangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="4,4,4,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="0" type="marker" name="4">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="145,82,45,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="145,82,45,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="5">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="255,127,0,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,253" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="3.4" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="255,127,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,253"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3.4"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="6">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="255,127,0,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="3" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="255,127,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="7">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="255,127,0,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="255,127,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="0" type="marker" name="8">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="125,139,143,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="2" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="125,139,143,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="9">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <Option type="Map">
            <Option value="0" type="QString" name="angle"/>
            <Option value="square" type="QString" name="cap_style"/>
            <Option value="0,179,179,255" type="QString" name="color"/>
            <Option value="1" type="QString" name="horizontal_anchor_point"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="circle" type="QString" name="name"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="255,255,255,255" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.2" type="QString" name="outline_width"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="diameter" type="QString" name="scale_method"/>
            <Option value="3.4" type="QString" name="size"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
            <Option value="MM" type="QString" name="size_unit"/>
            <Option value="1" type="QString" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="0,179,179,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.2"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3.4"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{8f832910-2a0f-40c9-8f65-1353a2712553}">
      <rule key="{76aa59b9-74e9-4f72-bbe5-0fcdf07f4894}" filter="&quot;BSN&quot; > 00000 AND &quot;BSN&quot; &lt; 40000" description="Existing Building">
        <settings calloutType="simple">
          <text-style blendMode="0" allowHtml="0" fontStrikeout="0" fontUnderline="0" fontFamily="Nirmala UI" capitalization="0" useSubstitutions="1" namedStyle="Bold" isExpression="1" fontSize="9" textOpacity="1" textColor="255,127,0,255" fontSizeUnit="Point" multilineHeight="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fieldName="concat('BSN: ',&quot;BSN&quot;)" fontKerning="1" fontLetterSpacing="0" textOrientation="horizontal" fontWeight="75" fontItalic="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWordSpacing="0">
            <families/>
            <text-buffer bufferDraw="1" bufferColor="255,255,255,255" bufferSize="0.69999999999999996" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="0" bufferOpacity="1" bufferSizeUnits="MM" bufferJoinStyle="64" bufferBlendMode="0"/>
            <text-mask maskOpacity="1" maskJoinStyle="128" maskedSymbolLayers="" maskType="0" maskSizeUnits="MM" maskEnabled="0" maskSize="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeDraw="0" shapeRadiiX="0" shapeRotation="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeSVGFile="" shapeSizeUnit="Point" shapeBorderWidthUnit="Point" shapeOffsetY="0" shapeRadiiUnit="Point" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeBorderWidth="0" shapeOffsetX="0" shapeType="0" shapeSizeType="0" shapeOffsetUnit="Point" shapeRotationType="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0">
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="225,89,137,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="35,35,35,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="225,89,137,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="fill" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleFill" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="128,128,128,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="Point" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="Point"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetAngle="135" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowOffsetGlobal="1" shadowScale="100" shadowBlendMode="6" shadowDraw="0" shadowUnder="0" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" placeDirectionSymbol="0" wrapChar="" leftDirectionSymbol="&lt;" addDirectionSymbol="0" multilineAlign="3" plussign="0" formatNumbers="0" autoWrapLength="0" decimals="3" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0"/>
          <placement distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" quadOffset="1" priority="10" maxCurvedCharAngleIn="25" polygonPlacementFlags="2" placementFlags="10" distUnits="MM" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" lineAnchorClipping="0" lineAnchorPercent="0.5" placement="6" lineAnchorType="0" rotationUnit="AngleDegrees" centroidWhole="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" geometryGeneratorType="PointGeometry" repeatDistanceUnits="MM" overrunDistanceUnit="MM" layerType="PointGeometry" fitInPolygonOnly="0" offsetUnits="MM" centroidInside="0" yOffset="-3" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="" repeatDistance="0" offsetType="1" overrunDistance="0"/>
          <rendering labelPerPart="0" maxNumLabels="2000" mergeLines="0" scaleMax="700" fontMinPixelSize="3" minFeatureSize="0" limitNumLabels="0" fontMaxPixelSize="10000" drawLabels="1" obstacleFactor="1" unplacedVisibility="0" displayAll="1" fontLimitPixelSize="0" scaleMin="20" zIndex="0" obstacleType="1" scaleVisibility="0" obstacle="1" upsidedownLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule key="{01adfc8b-39a8-459b-955c-4ac613c99f92}" filter="&quot;BSN&quot; > 70000 AND  &quot;BSN&quot; &lt; 80000" description="New Building">
        <settings calloutType="simple">
          <text-style blendMode="0" allowHtml="0" fontStrikeout="0" fontUnderline="0" fontFamily="Nirmala UI" capitalization="0" useSubstitutions="1" namedStyle="Bold" isExpression="1" fontSize="9" textOpacity="1" textColor="0,179,179,255" fontSizeUnit="Point" multilineHeight="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fieldName="concat('BSN: ',&quot;BSN&quot;)" fontKerning="1" fontLetterSpacing="0" textOrientation="horizontal" fontWeight="75" fontItalic="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWordSpacing="0">
            <families/>
            <text-buffer bufferDraw="1" bufferColor="255,255,255,255" bufferSize="0.69999999999999996" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="0" bufferOpacity="1" bufferSizeUnits="MM" bufferJoinStyle="64" bufferBlendMode="0"/>
            <text-mask maskOpacity="1" maskJoinStyle="128" maskedSymbolLayers="" maskType="0" maskSizeUnits="MM" maskEnabled="0" maskSize="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeDraw="0" shapeRadiiX="0" shapeRotation="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeSVGFile="" shapeSizeUnit="Point" shapeBorderWidthUnit="Point" shapeOffsetY="0" shapeRadiiUnit="Point" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeBorderWidth="0" shapeOffsetX="0" shapeType="0" shapeSizeType="0" shapeOffsetUnit="Point" shapeRotationType="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0">
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="225,89,137,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="35,35,35,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="225,89,137,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="fill" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleFill" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="128,128,128,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="Point" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="Point"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetAngle="135" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowOffsetGlobal="1" shadowScale="100" shadowBlendMode="6" shadowDraw="0" shadowUnder="0" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" placeDirectionSymbol="0" wrapChar="" leftDirectionSymbol="&lt;" addDirectionSymbol="0" multilineAlign="3" plussign="0" formatNumbers="0" autoWrapLength="0" decimals="3" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0"/>
          <placement distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" quadOffset="1" priority="10" maxCurvedCharAngleIn="25" polygonPlacementFlags="2" placementFlags="10" distUnits="MM" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" lineAnchorClipping="0" lineAnchorPercent="0.5" placement="6" lineAnchorType="0" rotationUnit="AngleDegrees" centroidWhole="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" geometryGeneratorType="PointGeometry" repeatDistanceUnits="MM" overrunDistanceUnit="MM" layerType="PointGeometry" fitInPolygonOnly="0" offsetUnits="MM" centroidInside="0" yOffset="-3" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="" repeatDistance="0" offsetType="1" overrunDistance="0"/>
          <rendering labelPerPart="0" maxNumLabels="2000" mergeLines="0" scaleMax="700" fontMinPixelSize="3" minFeatureSize="0" limitNumLabels="0" fontMaxPixelSize="10000" drawLabels="1" obstacleFactor="1" unplacedVisibility="0" displayAll="1" fontLimitPixelSize="0" scaleMin="20" zIndex="0" obstacleType="1" scaleVisibility="0" obstacle="1" upsidedownLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule key="{2cb8726e-2310-4db3-90b2-478b106e8830}" filter="&quot;BSN&quot; = 55555" description="Relocation">
        <settings calloutType="simple">
          <text-style blendMode="0" allowHtml="0" fontStrikeout="0" fontUnderline="0" fontFamily="Nirmala UI" capitalization="0" useSubstitutions="1" namedStyle="Bold" isExpression="1" fontSize="9" textOpacity="1" textColor="202,21,7,255" fontSizeUnit="Point" multilineHeight="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fieldName="concat('BSN: ',&quot;BSN&quot;)" fontKerning="1" fontLetterSpacing="0" textOrientation="horizontal" fontWeight="75" fontItalic="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWordSpacing="0">
            <families/>
            <text-buffer bufferDraw="1" bufferColor="255,255,255,255" bufferSize="0.69999999999999996" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="0" bufferOpacity="1" bufferSizeUnits="MM" bufferJoinStyle="64" bufferBlendMode="0"/>
            <text-mask maskOpacity="1" maskJoinStyle="128" maskedSymbolLayers="" maskType="0" maskSizeUnits="MM" maskEnabled="0" maskSize="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeDraw="0" shapeRadiiX="0" shapeRotation="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeSVGFile="" shapeSizeUnit="Point" shapeBorderWidthUnit="Point" shapeOffsetY="0" shapeRadiiUnit="Point" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeBorderWidth="0" shapeOffsetX="0" shapeType="0" shapeSizeType="0" shapeOffsetUnit="Point" shapeRotationType="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0">
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="225,89,137,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="35,35,35,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="225,89,137,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="fill" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleFill" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="128,128,128,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="Point" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="Point"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetAngle="135" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowOffsetGlobal="1" shadowScale="100" shadowBlendMode="6" shadowDraw="0" shadowUnder="0" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" placeDirectionSymbol="0" wrapChar="" leftDirectionSymbol="&lt;" addDirectionSymbol="0" multilineAlign="3" plussign="0" formatNumbers="0" autoWrapLength="0" decimals="3" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0"/>
          <placement distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" quadOffset="1" priority="10" maxCurvedCharAngleIn="25" polygonPlacementFlags="2" placementFlags="10" distUnits="MM" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" lineAnchorClipping="0" lineAnchorPercent="0.5" placement="6" lineAnchorType="0" rotationUnit="AngleDegrees" centroidWhole="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" geometryGeneratorType="PointGeometry" repeatDistanceUnits="MM" overrunDistanceUnit="MM" layerType="PointGeometry" fitInPolygonOnly="0" offsetUnits="Point" centroidInside="0" yOffset="-3" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="" repeatDistance="0" offsetType="1" overrunDistance="0"/>
          <rendering labelPerPart="0" maxNumLabels="2000" mergeLines="0" scaleMax="700" fontMinPixelSize="3" minFeatureSize="0" limitNumLabels="0" fontMaxPixelSize="10000" drawLabels="1" obstacleFactor="1" unplacedVisibility="0" displayAll="1" fontLimitPixelSize="0" scaleMin="20" zIndex="0" obstacleType="1" scaleVisibility="0" obstacle="1" upsidedownLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule key="{198c13cd-c04e-4fa2-8cdf-bdb26b2b4057}" filter="&quot;BSN&quot; = 66666" description="Other Type of Building">
        <settings calloutType="simple">
          <text-style blendMode="0" allowHtml="0" fontStrikeout="0" fontUnderline="0" fontFamily="Nirmala UI" capitalization="0" useSubstitutions="1" namedStyle="Bold" isExpression="1" fontSize="9" textOpacity="1" textColor="123,98,233,255" fontSizeUnit="Point" multilineHeight="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fieldName="concat('BSN: ',&quot;BSN&quot;)" fontKerning="1" fontLetterSpacing="0" textOrientation="horizontal" fontWeight="75" fontItalic="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWordSpacing="0">
            <families/>
            <text-buffer bufferDraw="1" bufferColor="255,255,255,255" bufferSize="0.69999999999999996" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="0" bufferOpacity="1" bufferSizeUnits="MM" bufferJoinStyle="64" bufferBlendMode="0"/>
            <text-mask maskOpacity="1" maskJoinStyle="128" maskedSymbolLayers="" maskType="0" maskSizeUnits="MM" maskEnabled="0" maskSize="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeDraw="0" shapeRadiiX="0" shapeRotation="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeSVGFile="" shapeSizeUnit="Point" shapeBorderWidthUnit="Point" shapeOffsetY="0" shapeRadiiUnit="Point" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeBorderWidth="0" shapeOffsetX="0" shapeType="0" shapeSizeType="0" shapeOffsetUnit="Point" shapeRotationType="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0">
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="225,89,137,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="35,35,35,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="225,89,137,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="fill" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleFill" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="128,128,128,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="Point" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="Point"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetAngle="135" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowOffsetGlobal="1" shadowScale="100" shadowBlendMode="6" shadowDraw="0" shadowUnder="0" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" placeDirectionSymbol="0" wrapChar="" leftDirectionSymbol="&lt;" addDirectionSymbol="0" multilineAlign="3" plussign="0" formatNumbers="0" autoWrapLength="0" decimals="3" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0"/>
          <placement distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" quadOffset="1" priority="10" maxCurvedCharAngleIn="25" polygonPlacementFlags="2" placementFlags="10" distUnits="MM" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" lineAnchorClipping="0" lineAnchorPercent="0.5" placement="6" lineAnchorType="0" rotationUnit="AngleDegrees" centroidWhole="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" geometryGeneratorType="PointGeometry" repeatDistanceUnits="MM" overrunDistanceUnit="MM" layerType="PointGeometry" fitInPolygonOnly="0" offsetUnits="MM" centroidInside="0" yOffset="-3" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="" repeatDistance="0" offsetType="1" overrunDistance="0"/>
          <rendering labelPerPart="0" maxNumLabels="2000" mergeLines="0" scaleMax="700" fontMinPixelSize="3" minFeatureSize="0" limitNumLabels="0" fontMaxPixelSize="10000" drawLabels="1" obstacleFactor="1" unplacedVisibility="0" displayAll="1" fontLimitPixelSize="0" scaleMin="20" zIndex="0" obstacleType="1" scaleVisibility="0" obstacle="1" upsidedownLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule key="{2d3bb6ec-f2aa-4c7a-a1be-df7054bac965}" filter="&quot;BSN&quot; = 60000" description="Homeless">
        <settings calloutType="simple">
          <text-style blendMode="0" allowHtml="0" fontStrikeout="0" fontUnderline="0" fontFamily="Nirmala UI" capitalization="0" useSubstitutions="1" namedStyle="Bold" isExpression="1" fontSize="9" textOpacity="1" textColor="51,160,44,255" fontSizeUnit="Point" multilineHeight="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fieldName="concat('BSN: ',&quot;BSN&quot;)" fontKerning="1" fontLetterSpacing="0" textOrientation="horizontal" fontWeight="75" fontItalic="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWordSpacing="0">
            <families/>
            <text-buffer bufferDraw="1" bufferColor="255,255,255,255" bufferSize="0.69999999999999996" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="0" bufferOpacity="1" bufferSizeUnits="MM" bufferJoinStyle="64" bufferBlendMode="0"/>
            <text-mask maskOpacity="1" maskJoinStyle="128" maskedSymbolLayers="" maskType="0" maskSizeUnits="MM" maskEnabled="0" maskSize="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeDraw="0" shapeRadiiX="0" shapeRotation="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeSVGFile="" shapeSizeUnit="Point" shapeBorderWidthUnit="Point" shapeOffsetY="0" shapeRadiiUnit="Point" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeBorderWidth="0" shapeOffsetX="0" shapeType="0" shapeSizeType="0" shapeOffsetUnit="Point" shapeRotationType="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0">
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="225,89,137,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="35,35,35,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="225,89,137,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="fill" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleFill" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="128,128,128,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="Point" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="Point"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetAngle="135" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowOffsetGlobal="1" shadowScale="100" shadowBlendMode="6" shadowDraw="0" shadowUnder="0" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" placeDirectionSymbol="0" wrapChar="" leftDirectionSymbol="&lt;" addDirectionSymbol="0" multilineAlign="3" plussign="0" formatNumbers="0" autoWrapLength="0" decimals="3" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0"/>
          <placement distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" quadOffset="1" priority="10" maxCurvedCharAngleIn="25" polygonPlacementFlags="2" placementFlags="10" distUnits="MM" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" lineAnchorClipping="0" lineAnchorPercent="0.5" placement="6" lineAnchorType="0" rotationUnit="AngleDegrees" centroidWhole="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" geometryGeneratorType="PointGeometry" repeatDistanceUnits="MM" overrunDistanceUnit="MM" layerType="PointGeometry" fitInPolygonOnly="0" offsetUnits="MM" centroidInside="0" yOffset="-3" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="" repeatDistance="0" offsetType="1" overrunDistance="0"/>
          <rendering labelPerPart="0" maxNumLabels="2000" mergeLines="0" scaleMax="700" fontMinPixelSize="3" minFeatureSize="0" limitNumLabels="0" fontMaxPixelSize="10000" drawLabels="1" obstacleFactor="1" unplacedVisibility="0" displayAll="1" fontLimitPixelSize="0" scaleMin="20" zIndex="0" obstacleType="1" scaleVisibility="0" obstacle="1" upsidedownLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule key="{942db5c6-cf2b-4585-8bb3-31cba268f40e}" filter="&quot;BSN&quot; = 00000" description="Demolished/Destroyed/Out of Scope/Commercial/industrial/Agricultural">
        <settings calloutType="simple">
          <text-style blendMode="0" allowHtml="0" fontStrikeout="0" fontUnderline="0" fontFamily="Nirmala UI" capitalization="0" useSubstitutions="1" namedStyle="Bold" isExpression="1" fontSize="9" textOpacity="1" textColor="139,140,140,255" fontSizeUnit="Point" multilineHeight="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fieldName="concat('BSN: ',&quot;BSN&quot;)" fontKerning="1" fontLetterSpacing="0" textOrientation="horizontal" fontWeight="75" fontItalic="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWordSpacing="0">
            <families/>
            <text-buffer bufferDraw="1" bufferColor="255,255,255,255" bufferSize="0.69999999999999996" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="0" bufferOpacity="1" bufferSizeUnits="MM" bufferJoinStyle="64" bufferBlendMode="0"/>
            <text-mask maskOpacity="1" maskJoinStyle="128" maskedSymbolLayers="" maskType="0" maskSizeUnits="MM" maskEnabled="0" maskSize="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeDraw="0" shapeRadiiX="0" shapeRotation="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeSVGFile="" shapeSizeUnit="Point" shapeBorderWidthUnit="Point" shapeOffsetY="0" shapeRadiiUnit="Point" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeBorderWidth="0" shapeOffsetX="0" shapeType="0" shapeSizeType="0" shapeOffsetUnit="Point" shapeRotationType="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0">
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="marker" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="225,89,137,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="35,35,35,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="225,89,137,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="fill" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" class="SimpleFill" pass="0" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="128,128,128,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="Point" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="Point"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetAngle="135" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowOffsetGlobal="1" shadowScale="100" shadowBlendMode="6" shadowDraw="0" shadowUnder="0" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" placeDirectionSymbol="0" wrapChar="" leftDirectionSymbol="&lt;" addDirectionSymbol="0" multilineAlign="3" plussign="0" formatNumbers="0" autoWrapLength="0" decimals="3" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0"/>
          <placement distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" quadOffset="1" priority="10" maxCurvedCharAngleIn="25" polygonPlacementFlags="2" placementFlags="10" distUnits="MM" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" lineAnchorClipping="0" lineAnchorPercent="0.5" placement="6" lineAnchorType="0" rotationUnit="AngleDegrees" centroidWhole="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" geometryGeneratorType="PointGeometry" repeatDistanceUnits="MM" overrunDistanceUnit="MM" layerType="PointGeometry" fitInPolygonOnly="0" offsetUnits="Point" centroidInside="0" yOffset="-3" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="" repeatDistance="0" offsetType="1" overrunDistance="0"/>
          <rendering labelPerPart="0" maxNumLabels="2000" mergeLines="0" scaleMax="1500" fontMinPixelSize="3" minFeatureSize="0" limitNumLabels="0" fontMaxPixelSize="10000" drawLabels="1" obstacleFactor="1" unplacedVisibility="0" displayAll="1" fontLimitPixelSize="0" scaleMin="20" zIndex="0" obstacleType="1" scaleVisibility="1" obstacle="1" upsidedownLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <customproperties>
    <Option type="Map">
      <Option value="no_action" type="QString" name="QFieldSync/action"/>
      <Option value="{}" type="QString" name="QFieldSync/attachment_naming"/>
      <Option value="offline" type="QString" name="QFieldSync/cloud_action"/>
      <Option value="" type="QString" name="QFieldSync/geometry_locked_expression"/>
      <Option value="{}" type="QString" name="QFieldSync/photo_naming"/>
      <Option value="{}" type="QString" name="QFieldSync/relationship_maximum_visible"/>
      <Option value="01408002001000_eb06a6fa_7c78_4602_b327_e49b9cf597c8" type="QString" name="QFieldSync/remoteLayerId"/>
      <Option value="" type="QString" name="QFieldSync/sourceDataPrimaryKeys"/>
      <Option value="30" type="int" name="QFieldSync/tracking_distance_requirement_minimum_meters"/>
      <Option value="1" type="int" name="QFieldSync/tracking_erroneous_distance_safeguard_maximum_meters"/>
      <Option value="0" type="int" name="QFieldSync/tracking_measurement_type"/>
      <Option value="30" type="int" name="QFieldSync/tracking_time_requirement_interval_seconds"/>
      <Option type="List" name="dualview/previewExpressions">
        <Option value="&quot;CBMS_GEOID&quot;" type="QString"/>
      </Option>
      <Option value="0" type="int" name="embeddedWidgets/count"/>
      <Option name="variableNames"/>
      <Option name="variableValues"/>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory enabled="0" sizeScale="3x:0,0,0,0,0,0" minScaleDenominator="0" maxScaleDenominator="1e+08" scaleDependency="Area" minimumSize="0" width="15" lineSizeType="MM" direction="0" labelPlacementMethod="XHeight" sizeType="MM" spacingUnit="MM" height="15" spacingUnitScale="3x:0,0,0,0,0,0" penColor="#000000" diagramOrientation="Up" opacity="1" spacing="5" backgroundAlpha="255" penWidth="0" lineSizeScale="3x:0,0,0,0,0,0" backgroundColor="#ffffff" showAxis="1" penAlpha="255" barWidth="5" rotationOffset="270" scaleBasedVisibility="0">
      <fontProperties style="" description="MS Shell Dlg 2,8.14286,-1,5,50,0,0,0,0,0"/>
      <attribute label="" color="#000000" field=""/>
      <axisSymbol>
        <symbol clip_to_extent="1" force_rhr="0" alpha="1" type="line" name="">
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" class="SimpleLine" pass="0" enabled="1">
            <Option type="Map">
              <Option value="0" type="QString" name="align_dash_pattern"/>
              <Option value="square" type="QString" name="capstyle"/>
              <Option value="5;2" type="QString" name="customdash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
              <Option value="MM" type="QString" name="customdash_unit"/>
              <Option value="0" type="QString" name="dash_pattern_offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
              <Option value="0" type="QString" name="draw_inside_polygon"/>
              <Option value="bevel" type="QString" name="joinstyle"/>
              <Option value="35,35,35,255" type="QString" name="line_color"/>
              <Option value="solid" type="QString" name="line_style"/>
              <Option value="0.26" type="QString" name="line_width"/>
              <Option value="MM" type="QString" name="line_width_unit"/>
              <Option value="0" type="QString" name="offset"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
              <Option value="MM" type="QString" name="offset_unit"/>
              <Option value="0" type="QString" name="ring_filter"/>
              <Option value="0" type="QString" name="trim_distance_end"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_end_map_unit_scale"/>
              <Option value="MM" type="QString" name="trim_distance_end_unit"/>
              <Option value="0" type="QString" name="trim_distance_start"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_start_map_unit_scale"/>
              <Option value="MM" type="QString" name="trim_distance_start_unit"/>
              <Option value="0" type="QString" name="tweak_dash_pattern_on_corners"/>
              <Option value="0" type="QString" name="use_custom_dash"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="width_map_unit_scale"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="35,35,35,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.26"/>
            <prop k="line_width_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="ring_filter" v="0"/>
            <prop k="trim_distance_end" v="0"/>
            <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="trim_distance_end_unit" v="MM"/>
            <prop k="trim_distance_start" v="0"/>
            <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="trim_distance_start_unit" v="MM"/>
            <prop k="tweak_dash_pattern_on_corners" v="0"/>
            <prop k="use_custom_dash" v="0"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings zIndex="0" showAll="1" priority="0" linePlacementFlags="18" obstacle="0" dist="0" placement="0">
    <properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <legend showLabelLegend="0" type="default-vector"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field configurationFlags="None" name="fid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="CBMS_GEOID">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="GEOCODE">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="REG_NAME">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="PROV_NAME">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="MUN_NAME">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="BGY_NAME">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="EA_CODE">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="BSN">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="X">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="Y">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="HOUSE_NO">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="BLOCK_NO">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="STREET_NAM">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="SUBD_VILL">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="SITIOPUROK">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="NO.OF_FLRS">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="BLDG_TYPE">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option value="01_SINGLE HOUSE" type="QString" name="01_SINGLE HOUSE"/>
              </Option>
              <Option type="Map">
                <Option value="02_DUPLEX" type="QString" name="02_DUPLEX"/>
              </Option>
              <Option type="Map">
                <Option value="03_APARTMENT/ACCESSORIA/ROWHOUSE" type="QString" name="03_APARTMENT/ACCESSORIA/ROWHOUSE"/>
              </Option>
              <Option type="Map">
                <Option value="04_CONDOMINIUM/CONDOTEL" type="QString" name="04_CONDOMINIUM/CONDOTEL"/>
              </Option>
              <Option type="Map">
                <Option value="05_OTHER MULTI-UNIT RESIDENTIAL BUILDING" type="QString" name="05_OTHER MULTI-UNIT RESIDENTIAL BUILDING"/>
              </Option>
              <Option type="Map">
                <Option value="06_COMMERCIAL/INDUSTRIAL/AGRICULTURAL" type="QString" name="06_COMMERCIAL/INDUSTRIAL/AGRICULTURAL"/>
              </Option>
              <Option type="Map">
                <Option value="07_INSTITUTIONAL LIVING QUARTER" type="QString" name="07_INSTITUTIONAL LIVING QUARTER"/>
              </Option>
              <Option type="Map">
                <Option value="08_NONE (HOMELESS)" type="QString" name="08_NONE (HOMELESS)"/>
              </Option>
              <Option type="Map">
                <Option value="09_TEMPORARY EVACUATION CENTERS/RELOCATION AREA" type="QString" name="09_TEMPORARY EVACUATION CENTERS/RELOCATION AREA"/>
              </Option>
              <Option type="Map">
                <Option value="99_OTHER TYPE OF BUILDING" type="QString" name="99_OTHER TYPE OF BUILDING"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="ROOF_TYPE">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option value="01_GALVANIZED IRON/ALUMINUM" type="QString" name="01_GALVANIZED IRON/ALUMINUM"/>
              </Option>
              <Option type="Map">
                <Option value="02_CONCRETE/CLAY TILE" type="QString" name="02_CONCRETE/CLAY TILE"/>
              </Option>
              <Option type="Map">
                <Option value="03_HALF GALVANIZED IRON AND HALF CONCRETE" type="QString" name="03_HALF GALVANIZED IRON AND HALF CONCRETE"/>
              </Option>
              <Option type="Map">
                <Option value="04_WOOD/BAMBOO" type="QString" name="04_WOOD/BAMBOO"/>
              </Option>
              <Option type="Map">
                <Option value="05_COGON/NIPA/ANAHAW" type="QString" name="05_COGON/NIPA/ANAHAW"/>
              </Option>
              <Option type="Map">
                <Option value="06_ASBESTOS" type="QString" name="06_ASBESTOS"/>
              </Option>
              <Option type="Map">
                <Option value="07_MAKESHIFT/SALVAGED/IMPROVISED MATERIALS" type="QString" name="07_MAKESHIFT/SALVAGED/IMPROVISED MATERIALS"/>
              </Option>
              <Option type="Map">
                <Option value="08_NONE" type="QString" name="08_NONE"/>
              </Option>
              <Option type="Map">
                <Option value="99_OTHERS" type="QString" name="99_OTHERS"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="WALL_TYPE">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option value="01_CONCRETE/BRICK/STONE" type="QString" name="01_CONCRETE/BRICK/STONE"/>
              </Option>
              <Option type="Map">
                <Option value="02_WOOD" type="QString" name="02_WOOD"/>
              </Option>
              <Option type="Map">
                <Option value="03_HALF CONCRETE/BRICK/STONE AND HALF WOOD" type="QString" name="03_HALF CONCRETE/BRICK/STONE AND HALF WOOD"/>
              </Option>
              <Option type="Map">
                <Option value="04_GALVANIZED IRON/ALUMINUM" type="QString" name="04_GALVANIZED IRON/ALUMINUM"/>
              </Option>
              <Option type="Map">
                <Option value="05_BAMBOO/SAWALI/COGON/NIPA" type="QString" name="05_BAMBOO/SAWALI/COGON/NIPA"/>
              </Option>
              <Option type="Map">
                <Option value="06_ASBESTOS" type="QString" name="06_ASBESTOS"/>
              </Option>
              <Option type="Map">
                <Option value="07_GLASS" type="QString" name="07_GLASS"/>
              </Option>
              <Option type="Map">
                <Option value="08_MAKESHIFT/SALVAGED/IMPROVISED MATERIALS" type="QString" name="08_MAKESHIFT/SALVAGED/IMPROVISED MATERIALS"/>
              </Option>
              <Option type="Map">
                <Option value="09_NONE" type="QString" name="09_NONE"/>
              </Option>
              <Option type="Map">
                <Option value="10_CONCRETE HOLLOW BLOCKS" type="QString" name="10_CONCRETE HOLLOW BLOCKS"/>
              </Option>
              <Option type="Map">
                <Option value="11_CONCRETE HOLLOW BLOCKS/WOOD" type="QString" name="11_CONCRETE HOLLOW BLOCKS/WOOD"/>
              </Option>
              <Option type="Map">
                <Option value="12_SHEAR WALLS" type="QString" name="12_SHEAR WALLS"/>
              </Option>
              <Option type="Map">
                <Option value="99_OTHERS" type="QString" name="99_OTHERS"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="FLOOR_TYPE">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option value="01_CONCRETE" type="QString" name="01_CONCRETE"/>
              </Option>
              <Option type="Map">
                <Option value="02_WOOD" type="QString" name="02_WOOD"/>
              </Option>
              <Option type="Map">
                <Option value="03_COCONUT LUMBER" type="QString" name="03_COCONUT LUMBER"/>
              </Option>
              <Option type="Map">
                <Option value="04_BAMBOO" type="QString" name="04_BAMBOO"/>
              </Option>
              <Option type="Map">
                <Option value="05_EARTH/SAND/MUD" type="QString" name="05_EARTH/SAND/MUD"/>
              </Option>
              <Option type="Map">
                <Option value="06_MAKESHIFT/SALVAGED/IMPROVISED MATERIALS" type="QString" name="06_MAKESHIFT/SALVAGED/IMPROVISED MATERIALS"/>
              </Option>
              <Option type="Map">
                <Option value="07_NONE" type="QString" name="07_NONE"/>
              </Option>
              <Option type="Map">
                <Option value="08_NOT OBSERVED" type="QString" name="08_NOT OBSERVED"/>
              </Option>
              <Option type="Map">
                <Option value="99_OTHERS" type="QString" name="99_OTHERS"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="REMARKS">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="UNIQUE_ID">
      <editWidget type="UuidGenerator">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="M_DC_ILQ">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option value="01_CAWI" type="QString" name="01_CAWI"/>
              </Option>
              <Option type="Map">
                <Option value="02_CAPI" type="QString" name="02_CAPI"/>
              </Option>
              <Option type="Map">
                <Option value="03_SAQ" type="QString" name="03_SAQ"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="DATE">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="FOR_VERIF">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="CASE">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" field="fid" name=""/>
    <alias index="1" field="CBMS_GEOID" name="APP GEOID"/>
    <alias index="2" field="GEOCODE" name=""/>
    <alias index="3" field="REG_NAME" name="REGION NAME"/>
    <alias index="4" field="PROV_NAME" name="PROVINCE NAME"/>
    <alias index="5" field="MUN_NAME" name="CITY/MUNICIPALITY NAME"/>
    <alias index="6" field="BGY_NAME" name="BARANGAY NAME"/>
    <alias index="7" field="EA_CODE" name="ENUMERATION AREA CODE"/>
    <alias index="8" field="BSN" name="BUILDING SERIAL NUMBER"/>
    <alias index="9" field="X" name="LONGITUDE"/>
    <alias index="10" field="Y" name="LATITUDE"/>
    <alias index="11" field="HOUSE_NO" name="BLDG NO./HOUSE NO./LOT NO."/>
    <alias index="12" field="BLOCK_NO" name="BLOCK NO."/>
    <alias index="13" field="STREET_NAM" name="STREET NAME"/>
    <alias index="14" field="SUBD_VILL" name="SUBDIVISION or VILLAGE"/>
    <alias index="15" field="SITIOPUROK" name="SITIO or PUROK"/>
    <alias index="16" field="NO.OF_FLRS" name="HOW MANY FLOORS ARE THERE IN THIS BUILDING?"/>
    <alias index="17" field="BLDG_TYPE" name="WHAT IS THE TYPE OF BUILDING?"/>
    <alias index="18" field="ROOF_TYPE" name="WHAT IS THE PRIMARY CONSTRUCTION MATERIAL OF THIS BUILDING'S ROOF?"/>
    <alias index="19" field="WALL_TYPE" name="WHAT IS THE PRIMARY CONSTRUCTION MATERIAL OF THIS BUILDING'S WALL?"/>
    <alias index="20" field="FLOOR_TYPE" name="WHAT IS THE PRIMARY CONSTRUCTION MATERIAL OF THIS BUILDING'S FLOOR?"/>
    <alias index="21" field="REMARKS" name="REMARKS"/>
    <alias index="22" field="UNIQUE_ID" name="UNIQUE ID"/>
    <alias index="23" field="M_DC_ILQ" name="MODE OF DATA COLLECTION"/>
    <alias index="24" field="DATE" name=""/>
    <alias index="25" field="FOR_VERIF" name=""/>
    <alias index="26" field="CASE" name=""/>
  </aliases>
  <defaults>
    <default expression="" applyOnUpdate="0" field="fid"/>
    <default expression="@layer_name ||  &quot;BSN&quot; " applyOnUpdate="1" field="CBMS_GEOID"/>
    <default expression="aggregate(layer:=concat(left(@layer_name,5),'_ea2024'),aggregate:='concatenate',expression:=&quot;Geocode&quot;,concatenator:=',',filter:=contains($geometry,geometry(@parent)))" applyOnUpdate="1" field="GEOCODE"/>
    <default expression="case&#xd;&#xa;when left(@layer_name,3) = 028 then '01_Region I (Ilocos Region)'&#xd;&#xa;when left(@layer_name,3) = 029 then '01_Region I (Ilocos Region)'&#xd;&#xa;when left(@layer_name,3) = 033 then '01_Region I (Ilocos Region)'&#xd;&#xa;when left(@layer_name,3) = 055 then '01_Region I (Ilocos Region)'&#xd;&#xa;when left(@layer_name,3) = 009 then '02_Region II (Cagayan Valley)'&#xd;&#xa;when left(@layer_name,3) = 015 then '02_Region II (Cagayan Valley)'&#xd;&#xa;when left(@layer_name,3) = 031 then '02_Region II (Cagayan Valley)'&#xd;&#xa;when left(@layer_name,3) = 050 then '02_Region II (Cagayan Valley)'&#xd;&#xa;when left(@layer_name,3) = 057 then '02_Region II (Cagayan Valley)'&#xd;&#xa;when left(@layer_name,3) = 008 then '03_Region III (Central Luzon)'&#xd;&#xa;when left(@layer_name,3) = 014 then '03_Region III (Central Luzon)'&#xd;&#xa;when left(@layer_name,3) = 049 then '03_Region III (Central Luzon)'&#xd;&#xa;when left(@layer_name,3) = 054 then '03_Region III (Central Luzon)'&#xd;&#xa;when left(@layer_name,3) = 069 then '03_Region III (Central Luzon)'&#xd;&#xa;when left(@layer_name,3) = 071 then '03_Region III (Central Luzon)'&#xd;&#xa;when left(@layer_name,3) = 077 then '03_Region III (Central Luzon)'&#xd;&#xa;when left(@layer_name,3) = 301 then '03_Region III (Central Luzon)'&#xd;&#xa;when left(@layer_name,3) = 314 then '03_Region III (Central Luzon)'&#xd;&#xa;when left(@layer_name,3) = 010 then '04_Region IV-A (CALABARZON)'&#xd;&#xa;when left(@layer_name,3) = 021 then '04_Region IV-A (CALABARZON)'&#xd;&#xa;when left(@layer_name,3) = 034 then '04_Region IV-A (CALABARZON)'&#xd;&#xa;when left(@layer_name,3) = 056 then '04_Region IV-A (CALABARZON)'&#xd;&#xa;when left(@layer_name,3) = 058 then '04_Region IV-A (CALABARZON)'&#xd;&#xa;when left(@layer_name,3) = 312 then '04_Region IV-A (CALABARZON)'&#xd;&#xa;when left(@layer_name,3) = 040 then '17_MIMAROPA Region'&#xd;&#xa;when left(@layer_name,3) = 051 then '17_MIMAROPA Region'&#xd;&#xa;when left(@layer_name,3) = 052 then '17_MIMAROPA Region'&#xd;&#xa;when left(@layer_name,3) = 053 then '17_MIMAROPA Region'&#xd;&#xa;when left(@layer_name,3) = 059 then '17_MIMAROPA Region'&#xd;&#xa;when left(@layer_name,3) = 315 then '17_MIMAROPA Region'&#xd;&#xa;when left(@layer_name,3) = 005 then '05_Region V (Bicol Region)'&#xd;&#xa;when left(@layer_name,3) = 016 then '05_Region V (Bicol Region)'&#xd;&#xa;when left(@layer_name,3) = 017 then '05_Region V (Bicol Region)'&#xd;&#xa;when left(@layer_name,3) = 020 then '05_Region V (Bicol Region)'&#xd;&#xa;when left(@layer_name,3) = 041 then '05_Region V (Bicol Region)'&#xd;&#xa;when left(@layer_name,3) = 062 then '05_Region V (Bicol Region)'&#xd;&#xa;when left(@layer_name,3) = 004 then '06_Region VI (Western Visayas)'&#xd;&#xa;when left(@layer_name,3) = 006 then '06_Region VI (Western Visayas)'&#xd;&#xa;when left(@layer_name,3) = 019 then '06_Region VI (Western Visayas)'&#xd;&#xa;when left(@layer_name,3) = 030 then '06_Region VI (Western Visayas)'&#xd;&#xa;when left(@layer_name,3) = 045 then '06_Region VI (Western Visayas)'&#xd;&#xa;when left(@layer_name,3) = 079 then '06_Region VI (Western Visayas)'&#xd;&#xa;when left(@layer_name,3) = 302 then '06_Region VI (Western Visayas)'&#xd;&#xa;when left(@layer_name,3) = 310 then '06_Region VI (Western Visayas)'&#xd;&#xa;when left(@layer_name,3) = 012 then '07_Region VII (Central Visayas)'&#xd;&#xa;when left(@layer_name,3) = 022 then '07_Region VII (Central Visayas)'&#xd;&#xa;when left(@layer_name,3) = 046 then '07_Region VII (Central Visayas)'&#xd;&#xa;when left(@layer_name,3) = 061 then '07_Region VII (Central Visayas)'&#xd;&#xa;when left(@layer_name,3) = 306 then '07_Region VII (Central Visayas)'&#xd;&#xa;when left(@layer_name,3) = 311 then '07_Region VII (Central Visayas)'&#xd;&#xa;when left(@layer_name,3) = 313 then '07_Region VII (Central Visayas)'&#xd;&#xa;when left(@layer_name,3) = 026 then '08_Region VIII (Eastern Visayas)'&#xd;&#xa;when left(@layer_name,3) = 037 then '08_Region VIII (Eastern Visayas)'&#xd;&#xa;when left(@layer_name,3) = 048 then '08_Region VIII (Eastern Visayas)'&#xd;&#xa;when left(@layer_name,3) = 060 then '08_Region VIII (Eastern Visayas)'&#xd;&#xa;when left(@layer_name,3) = 064 then '08_Region VIII (Eastern Visayas)'&#xd;&#xa;when left(@layer_name,3) = 078 then '08_Region VIII (Eastern Visayas)'&#xd;&#xa;when left(@layer_name,3) = 316 then '08_Region VIII (Eastern Visayas)'&#xd;&#xa;when left(@layer_name,3) = 072 then '09_Region IX (Zamboanga Peninsula)'&#xd;&#xa;when left(@layer_name,3) = 073 then '09_Region IX (Zamboanga Peninsula)'&#xd;&#xa;when left(@layer_name,3) = 083 then '09_Region IX (Zamboanga Peninsula)'&#xd;&#xa;when left(@layer_name,5) = 90101 then '09_Region IX (Zamboanga Peninsula)'&#xd;&#xa;when left(@layer_name,3) = 317 then '09_Region IX (Zamboanga Peninsula)'&#xd;&#xa;when left(@layer_name,3) = 013 then '10_Region X (Northern Mindanao)'&#xd;&#xa;when left(@layer_name,3) = 018 then '10_Region X (Northern Mindanao)'&#xd;&#xa;when left(@layer_name,3) = 035 then '10_Region X (Northern Mindanao)'&#xd;&#xa;when left(@layer_name,3) = 042 then '10_Region X (Northern Mindanao)'&#xd;&#xa;when left(@layer_name,3) = 043 then '10_Region X (Northern Mindanao)'&#xd;&#xa;when left(@layer_name,3) = 305 then '10_Region X (Northern Mindanao)'&#xd;&#xa;when left(@layer_name,3) = 309 then '10_Region X (Northern Mindanao)'&#xd;&#xa;when left(@layer_name,3) = 023 then '11_Region XI (Davao Region)'&#xd;&#xa;when left(@layer_name,3) = 024 then '11_Region XI (Davao Region)'&#xd;&#xa;when left(@layer_name,3) = 025 then '11_Region XI (Davao Region)'&#xd;&#xa;when left(@layer_name,3) = 082 then '11_Region XI (Davao Region)'&#xd;&#xa;when left(@layer_name,3) = 086 then '11_Region XI (Davao Region)'&#xd;&#xa;when left(@layer_name,3) = 307 then '11_Region XI (Davao Region)'&#xd;&#xa;when left(@layer_name,3) = 047 then '12_Region XII (SOCCSKSARGEN)'&#xd;&#xa;when left(@layer_name,3) = 063 then '12_Region XII (SOCCSKSARGEN)'&#xd;&#xa;when left(@layer_name,3) = 065 then '12_Region XII (SOCCSKSARGEN)'&#xd;&#xa;when left(@layer_name,3) = 080 then '12_Region XII (SOCCSKSARGEN)'&#xd;&#xa;when left(@layer_name,3) = 308 then '12_Region XII (SOCCSKSARGEN)'&#xd;&#xa;when left(@layer_name,3) = 801 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 802 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 803 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 804 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 805 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 806 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 807 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 808 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 809 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 810 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 811 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 812 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 813 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 814 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 815 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 817 then '13_National Capital Region (NCR)'&#xd;&#xa;when left(@layer_name,3) = 001 then '14_Cordillera Administrative Region (CAR)'&#xd;&#xa;when left(@layer_name,3) = 011 then '14_Cordillera Administrative Region (CAR)'&#xd;&#xa;when left(@layer_name,3) = 027 then '14_Cordillera Administrative Region (CAR)'&#xd;&#xa;when left(@layer_name,3) = 032 then '14_Cordillera Administrative Region (CAR)'&#xd;&#xa;when left(@layer_name,3) = 044 then '14_Cordillera Administrative Region (CAR)'&#xd;&#xa;when left(@layer_name,3) = 081 then '14_Cordillera Administrative Region (CAR)'&#xd;&#xa;when left(@layer_name,3) = 303 then '14_Cordillera Administrative Region (CAR)'&#xd;&#xa;when left(@layer_name,3) = 002 then '16_Region XIII (Caraga)'&#xd;&#xa;when left(@layer_name,3) = 003 then '16_Region XIII (Caraga)'&#xd;&#xa;when left(@layer_name,3) = 067 then '16_Region XIII (Caraga)'&#xd;&#xa;when left(@layer_name,3) = 068 then '16_Region XIII (Caraga)'&#xd;&#xa;when left(@layer_name,3) = 085 then '16_Region XIII (Caraga)'&#xd;&#xa;when left(@layer_name,3) = 304 then '16_Region XIII (Caraga)'&#xd;&#xa;when left(@layer_name,3) = 007 then '15_Bangsamoro Autonomous Region In Muslim Mindanao (BARMM)'&#xd;&#xa;when left(@layer_name,3) = 036 then '15_Bangsamoro Autonomous Region In Muslim Mindanao (BARMM)'&#xd;&#xa;when left(@layer_name,3) = 087 then '15_Bangsamoro Autonomous Region In Muslim Mindanao (BARMM)'&#xd;&#xa;when left(@layer_name,3) = 088 then '15_Bangsamoro Autonomous Region In Muslim Mindanao (BARMM)'&#xd;&#xa;when left(@layer_name,3) = 066 then '15_Bangsamoro Autonomous Region In Muslim Mindanao (BARMM)'&#xd;&#xa;when left(@layer_name,3) = 070 then '15_Bangsamoro Autonomous Region In Muslim Mindanao (BARMM)'&#xd;&#xa;when left(@layer_name,3) = 999 then '15_Bangsamoro Autonomous Region In Muslim Mindanao (BARMM)'&#xd;&#xa;end&#xd;&#xa;" applyOnUpdate="1" field="REG_NAME"/>
    <default expression="case&#xd;&#xa;when left(@layer_name,3) = 028 then '028_Ilocos Norte'&#xd;&#xa;when left(@layer_name,3) = 029 then '029_Ilocos Sur'&#xd;&#xa;when left(@layer_name,3) = 033 then '033_La Union'&#xd;&#xa;when left(@layer_name,3) = 055 then '055_Pangasinan'&#xd;&#xa;when left(@layer_name,3) = 009 then '009_Batanes'&#xd;&#xa;when left(@layer_name,3) = 015 then '015_Cagayan'&#xd;&#xa;when left(@layer_name,3) = 031 then '031_Isabela'&#xd;&#xa;when left(@layer_name,3) = 050 then '050_Nueva Vizcaya'&#xd;&#xa;when left(@layer_name,3) = 057 then '057_Quirino'&#xd;&#xa;when left(@layer_name,3) = 008 then '008_Bataan'&#xd;&#xa;when left(@layer_name,3) = 014 then '014_Bulacan'&#xd;&#xa;when left(@layer_name,3) = 049 then '049_Nueva Ecija'&#xd;&#xa;when left(@layer_name,3) = 054 then '054_Pampanga'&#xd;&#xa;when left(@layer_name,3) = 069 then '069_Tarlac'&#xd;&#xa;when left(@layer_name,3) = 071 then '071_Zambales'&#xd;&#xa;when left(@layer_name,3) = 077 then '077_Aurora'&#xd;&#xa;when left(@layer_name,3) = 301 then '301_City of Angeles'&#xd;&#xa;when left(@layer_name,3) = 314 then '314_City of Olongapo'&#xd;&#xa;when left(@layer_name,3) = 010 then '010_Batangas'&#xd;&#xa;when left(@layer_name,3) = 021 then '021_Cavite'&#xd;&#xa;when left(@layer_name,3) = 034 then '034_Laguna'&#xd;&#xa;when left(@layer_name,3) = 056 then '056_Quezon'&#xd;&#xa;when left(@layer_name,3) = 058 then '058_Rizal'&#xd;&#xa;when left(@layer_name,3) = 312 then '312_City of Lucena'&#xd;&#xa;when left(@layer_name,3) = 040 then '040_Marinduque'&#xd;&#xa;when left(@layer_name,3) = 051 then '051_Occidental Mindoro'&#xd;&#xa;when left(@layer_name,3) = 052 then '052_Oriental Mindoro'&#xd;&#xa;when left(@layer_name,3) = 053 then '053_Palawan'&#xd;&#xa;when left(@layer_name,3) = 059 then '059_Romblon'&#xd;&#xa;when left(@layer_name,3) = 315 then '315_City of Puerto Princesa'&#xd;&#xa;when left(@layer_name,3) = 005 then '005_Albay'&#xd;&#xa;when left(@layer_name,3) = 016 then '016_Camarines Norte'&#xd;&#xa;when left(@layer_name,3) = 017 then '017_Camarines Sur'&#xd;&#xa;when left(@layer_name,3) = 020 then '020_Catanduanes'&#xd;&#xa;when left(@layer_name,3) = 041 then '041_Masbate'&#xd;&#xa;when left(@layer_name,3) = 062 then '062_Sorsogon'&#xd;&#xa;when left(@layer_name,3) = 004 then '004_Aklan'&#xd;&#xa;when left(@layer_name,3) = 006 then '006_Antique'&#xd;&#xa;when left(@layer_name,3) = 019 then '019_Capiz'&#xd;&#xa;when left(@layer_name,3) = 030 then '030_Iloilo'&#xd;&#xa;when left(@layer_name,3) = 045 then '045_Negros Occidental'&#xd;&#xa;when left(@layer_name,3) = 079 then '079_Guimaras'&#xd;&#xa;when left(@layer_name,3) = 302 then '302_City of Bacolod'&#xd;&#xa;when left(@layer_name,3) = 310 then '310_City of Iloilo'&#xd;&#xa;when left(@layer_name,3) = 012 then '012_Bohol'&#xd;&#xa;when left(@layer_name,3) = 022 then '022_Cebu'&#xd;&#xa;when left(@layer_name,3) = 046 then '046_Negros Oriental'&#xd;&#xa;when left(@layer_name,3) = 061 then '061_Siquijor'&#xd;&#xa;when left(@layer_name,3) = 306 then '306_City of Cebu'&#xd;&#xa;when left(@layer_name,3) = 311 then '311_City of Lapu-Lapu'&#xd;&#xa;when left(@layer_name,3) = 313 then '313_City of Mandaue'&#xd;&#xa;when left(@layer_name,3) = 026 then '026_Eastern Samar'&#xd;&#xa;when left(@layer_name,3) = 037 then '037_Leyte'&#xd;&#xa;when left(@layer_name,3) = 048 then '048_Northern Samar'&#xd;&#xa;when left(@layer_name,3) = 060 then '060_Samar'&#xd;&#xa;when left(@layer_name,3) = 064 then '064_Southern Leyte'&#xd;&#xa;when left(@layer_name,3) = 078 then '078_Biliran'&#xd;&#xa;when left(@layer_name,3) = 316 then '316_City of Tacloban'&#xd;&#xa;when left(@layer_name,3) = 072 then '072_Zamboanga del Norte'&#xd;&#xa;when left(@layer_name,3) = 073 then '073_Zamboanga del Sur'&#xd;&#xa;when left(@layer_name,3) = 083 then '083_Zamboanga Sibugay'&#xd;&#xa;when left(@layer_name,5) = 90101 then '901_City of Isabela'&#xd;&#xa;when left(@layer_name,3) = 317 then '317_City of Zamboanga'&#xd;&#xa;when left(@layer_name,3) = 013 then '013_Bukidnon'&#xd;&#xa;when left(@layer_name,3) = 018 then '018_Camiguin'&#xd;&#xa;when left(@layer_name,3) = 035 then '035_Lanao del Norte'&#xd;&#xa;when left(@layer_name,3) = 042 then '042_Misamis Occidental'&#xd;&#xa;when left(@layer_name,3) = 043 then '043_Misamis Oriental'&#xd;&#xa;when left(@layer_name,3) = 305 then '305_City of Cagayan de Oro'&#xd;&#xa;when left(@layer_name,3) = 309 then '309_City of Iligan'&#xd;&#xa;when left(@layer_name,3) = 023 then '023_Davao del Norte'&#xd;&#xa;when left(@layer_name,3) = 024 then '024_Davao del Sur'&#xd;&#xa;when left(@layer_name,3) = 025 then '025_Davao Oriental'&#xd;&#xa;when left(@layer_name,3) = 082 then '082_Davao de Oro'&#xd;&#xa;when left(@layer_name,3) = 086 then '086_Davao Occidental'&#xd;&#xa;when left(@layer_name,3) = 307 then '307_City of Davao'&#xd;&#xa;when left(@layer_name,3) = 047 then '047_Cotabato'&#xd;&#xa;when left(@layer_name,3) = 063 then '063_South Cotabato'&#xd;&#xa;when left(@layer_name,3) = 065 then '065_Sultan Kudarat'&#xd;&#xa;when left(@layer_name,3) = 080 then '080_Sarangani'&#xd;&#xa;when left(@layer_name,3) = 308 then '308_City of General Santos'&#xd;&#xa;when left(@layer_name,3) = 806 then '806_NCR First District'&#xd;&#xa;when left(@layer_name,3) = 805 then '805_NCR Second District'&#xd;&#xa;when left(@layer_name,3) = 807 then '807_NCR Second District'&#xd;&#xa;when left(@layer_name,3) = 812 then '812_NCR Second District'&#xd;&#xa;when left(@layer_name,3) = 813 then '813_NCR Second District'&#xd;&#xa;when left(@layer_name,3) = 814 then '814_NCR Second District'&#xd;&#xa;when left(@layer_name,3) = 801 then '801_NCR Third District'&#xd;&#xa;when left(@layer_name,3) = 804 then '804_NCR Third District'&#xd;&#xa;when left(@layer_name,3) = 809 then '809_NCR Third District'&#xd;&#xa;when left(@layer_name,3) = 816 then '816_NCR Third District'&#xd;&#xa;when left(@layer_name,3) = 802 then '802_NCR Fourth District'&#xd;&#xa;when left(@layer_name,3) = 803 then '803_NCR Fourth District'&#xd;&#xa;when left(@layer_name,3) = 808 then '808_NCR Fourth District'&#xd;&#xa;when left(@layer_name,3) = 810 then '810_NCR Fourth District'&#xd;&#xa;when left(@layer_name,3) = 811 then '811_NCR Fourth District'&#xd;&#xa;when left(@layer_name,3) = 817 then '817_NCR Fourth District'&#xd;&#xa;when left(@layer_name,3) = 815 then '815_NCR Fourth District'&#xd;&#xa;when left(@layer_name,3) = 001 then '001_Abra'&#xd;&#xa;when left(@layer_name,3) = 011 then '011_Benguet'&#xd;&#xa;when left(@layer_name,3) = 027 then '027_Ifugao'&#xd;&#xa;when left(@layer_name,3) = 032 then '032_Kalinga'&#xd;&#xa;when left(@layer_name,3) = 044 then '044_Mountain Province'&#xd;&#xa;when left(@layer_name,3) = 081 then '081_Apayao'&#xd;&#xa;when left(@layer_name,3) = 303 then '303_City of Baguio'&#xd;&#xa;when left(@layer_name,3) = 002 then '002_Agusan del Norte'&#xd;&#xa;when left(@layer_name,3) = 003 then '003_Agusan del Sur'&#xd;&#xa;when left(@layer_name,3) = 067 then '067_Surigao del Norte'&#xd;&#xa;when left(@layer_name,3) = 068 then '068_Surigao del Sur'&#xd;&#xa;when left(@layer_name,3) = 085 then '085_Dinagat Islands'&#xd;&#xa;when left(@layer_name,3) = 304 then '304_City of Butuan'&#xd;&#xa;when left(@layer_name,3) = 007 then '007_Basilan'&#xd;&#xa;when left(@layer_name,3) = 036 then '036_Lanao del Sur'&#xd;&#xa;when left(@layer_name,3) = 087 then '087_Maguindanao del Norte'&#xd;&#xa;when left(@layer_name,3) = 088 then '088_Maguindanao del Sur'&#xd;&#xa;when left(@layer_name,3) = 066 then '066_Sulu'&#xd;&#xa;when left(@layer_name,3) = 070 then '070_Tawi-Tawi'&#xd;&#xa;when left(@layer_name,3) = 999 then '999_BARMM 63'&#xd;&#xa;end&#xd;&#xa;" applyOnUpdate="1" field="PROV_NAME"/>
    <default expression="substr(&quot;GEOCODE&quot;,4,2) ||'_' || aggregate(layer:=concat(left(@layer_name,5),'_ea2024'),aggregate:='concatenate',expression:=&quot;mun_name&quot;,concatenator:=',',filter:=contains($geometry,geometry(@parent)))" applyOnUpdate="1" field="MUN_NAME"/>
    <default expression="substr(&quot;GEOCODE&quot;,6,3) || '_' || aggregate(layer:=concat(left(@layer_name,5),'_bgy'),aggregate:='concatenate',expression:=&quot;name&quot;,concatenator:=',',filter:=contains($geometry,geometry(@parent)))" applyOnUpdate="1" field="BGY_NAME"/>
    <default expression="substr(&quot;GEOCODE&quot;,9,6)" applyOnUpdate="1" field="EA_CODE"/>
    <default expression="case&#xd;&#xa;when &quot;bldgstatus&quot; = '01_Existing' then aggregate(layer:=concat(substr(@layer_name,0,5),'_bldg_point'),aggregate:='concatenate',expression:=&quot;BSN&quot;,concatenator:=',',filter:=contains($geometry,geometry(@parent)))&#xd;&#xa;When &quot;bldgstatus&quot; = '02_New Building' then coalesce(lpad(maximum( &quot;BSN&quot; ,group_by:= &quot;bldgstatus&quot; ),5,'0')+1,'70001')&#xd;&#xa;when &quot;bldgstatus&quot; = '03_Relocation' then '55555'&#xd;&#xa;when &quot;bldgstatus&quot; = '04_Homeless' then '60000'&#xd;&#xa;when &quot;bldgstatus&quot; = '05_Demolished/Destroyed' then '00000'&#xd;&#xa;end" applyOnUpdate="1" field="BSN"/>
    <default expression="$X" applyOnUpdate="1" field="X"/>
    <default expression="$Y" applyOnUpdate="1" field="Y"/>
    <default expression="" applyOnUpdate="0" field="HOUSE_NO"/>
    <default expression="" applyOnUpdate="0" field="BLOCK_NO"/>
    <default expression="" applyOnUpdate="0" field="STREET_NAM"/>
    <default expression="" applyOnUpdate="0" field="SUBD_VILL"/>
    <default expression="" applyOnUpdate="0" field="SITIOPUROK"/>
    <default expression="" applyOnUpdate="0" field="NO.OF_FLRS"/>
    <default expression="" applyOnUpdate="0" field="BLDG_TYPE"/>
    <default expression="" applyOnUpdate="0" field="ROOF_TYPE"/>
    <default expression="" applyOnUpdate="0" field="WALL_TYPE"/>
    <default expression="" applyOnUpdate="0" field="FLOOR_TYPE"/>
    <default expression="" applyOnUpdate="0" field="REMARKS"/>
    <default expression="UUID()" applyOnUpdate="0" field="UNIQUE_ID"/>
    <default expression="" applyOnUpdate="0" field="M_DC_ILQ"/>
    <default expression="format_date(to_datetime(now()),'MM.dd.yyyy - hh:mm:ss ap')" applyOnUpdate="1" field="DATE"/>
    <default expression="CASE&#xa;    WHEN (BSN LIKE '7000%' OR BSN = '00000' OR &quot;CASE&quot; IS NOT NULL) THEN 1&#xa;    ELSE NULL&#xa;END&#xa;" applyOnUpdate="0" field="FOR_VERIF"/>
    <default expression="" applyOnUpdate="0" field="CASE"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="fid"/>
    <constraint notnull_strength="1" exp_strength="1" constraints="5" unique_strength="0" field="CBMS_GEOID"/>
    <constraint notnull_strength="1" exp_strength="0" constraints="1" unique_strength="0" field="GEOCODE"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="REG_NAME"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="PROV_NAME"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="MUN_NAME"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="BGY_NAME"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="EA_CODE"/>
    <constraint notnull_strength="1" exp_strength="1" constraints="5" unique_strength="0" field="BSN"/>
    <constraint notnull_strength="1" exp_strength="2" constraints="5" unique_strength="0" field="X"/>
    <constraint notnull_strength="1" exp_strength="2" constraints="5" unique_strength="0" field="Y"/>
    <constraint notnull_strength="0" exp_strength="2" constraints="4" unique_strength="0" field="HOUSE_NO"/>
    <constraint notnull_strength="0" exp_strength="2" constraints="4" unique_strength="0" field="BLOCK_NO"/>
    <constraint notnull_strength="0" exp_strength="2" constraints="4" unique_strength="0" field="STREET_NAM"/>
    <constraint notnull_strength="0" exp_strength="2" constraints="4" unique_strength="0" field="SUBD_VILL"/>
    <constraint notnull_strength="0" exp_strength="2" constraints="4" unique_strength="0" field="SITIOPUROK"/>
    <constraint notnull_strength="0" exp_strength="2" constraints="4" unique_strength="0" field="NO.OF_FLRS"/>
    <constraint notnull_strength="0" exp_strength="2" constraints="4" unique_strength="0" field="BLDG_TYPE"/>
    <constraint notnull_strength="0" exp_strength="1" constraints="4" unique_strength="0" field="ROOF_TYPE"/>
    <constraint notnull_strength="0" exp_strength="2" constraints="4" unique_strength="0" field="WALL_TYPE"/>
    <constraint notnull_strength="0" exp_strength="2" constraints="4" unique_strength="0" field="FLOOR_TYPE"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="REMARKS"/>
    <constraint notnull_strength="1" exp_strength="0" constraints="1" unique_strength="0" field="UNIQUE_ID"/>
    <constraint notnull_strength="0" exp_strength="2" constraints="4" unique_strength="0" field="M_DC_ILQ"/>
    <constraint notnull_strength="1" exp_strength="0" constraints="1" unique_strength="0" field="DATE"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="FOR_VERIF"/>
    <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="CASE"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="fid"/>
    <constraint desc="" exp="regexp_match(&quot;CBMS_GEOID&quot;,'^[0-9]{19}$')&#xa;" field="CBMS_GEOID"/>
    <constraint desc="" exp="" field="GEOCODE"/>
    <constraint desc="" exp="" field="REG_NAME"/>
    <constraint desc="" exp="" field="PROV_NAME"/>
    <constraint desc="" exp="" field="MUN_NAME"/>
    <constraint desc="" exp="" field="BGY_NAME"/>
    <constraint desc="" exp="" field="EA_CODE"/>
    <constraint desc="MUST BE 5 DIGITS!" exp="regexp_match(&quot;BSN&quot;,'^[0-9]{5}$')&#xa;" field="BSN"/>
    <constraint desc="" exp="$x" field="X"/>
    <constraint desc="" exp="$y" field="Y"/>
    <constraint desc="if not applicable type &quot;NA&quot;" exp="regexp_match(case&#xd;&#xa;when &quot;BSN&quot; = '60000' then not ( &quot;HOUSE_NO&quot;  is null)&#xd;&#xa;when &quot;BSN&quot; = '99999' then not (&quot;HOUSE_NO&quot; is null)&#xd;&#xa;when &quot;BSN&quot; = '00000' then  (&quot;BLDG_TYPE&quot; is null)&#xd;&#xa;else &quot;HOUSE_NO&quot;&#xd;&#xa;end, '^[A-Z \s 0-9 !@#$%^&amp;*()_+-=,./?&lt;>;:''&quot;&quot;]+$')&#xd;&#xa;" field="HOUSE_NO"/>
    <constraint desc="if not applicable type &quot;NA&quot;" exp="regexp_match(case&#xd;&#xa;when &quot;BSN&quot; = '60000' then  ( &quot;BLOCK_NO&quot;  is null)&#xd;&#xa;when &quot;BSN&quot; = '99999' then not (&quot;BLOCK_NO&quot; is null)&#xd;&#xa;when &quot;BSN&quot; = '00000' then  (&quot;BLDG_TYPE&quot; is null)&#xd;&#xa;else &quot;BLOCK_NO&quot;&#xd;&#xa;end, '^[A-Z \s 0-9 !@#$%^&amp;*()_+-=,./?&lt;>;:''&quot;&quot;]+$')" field="BLOCK_NO"/>
    <constraint desc="if not applicable type &quot;NA&quot;" exp="&#xd;&#xa;regexp_match(case&#xd;&#xa;when &quot;BSN&quot; = '60000' then  ( &quot;STREET_NAM&quot;    is null)&#xd;&#xa;when &quot;BSN&quot; = '99999' then not ( &quot;STREET_NAM&quot;  is null)&#xd;&#xa;when &quot;BSN&quot; = '00000' then  (&quot;BLDG_TYPE&quot; is null)&#xd;&#xa;&#xd;&#xa;else &quot;STREET_NAM&quot;&#xd;&#xa;end, '^[A-Z \s 0-9 !@#$%^&amp;*()_+-=,./?&lt;>;:''&quot;&quot;]+$')" field="STREET_NAM"/>
    <constraint desc="if not applicable type &quot;NA&quot;" exp="&#xd;&#xa;regexp_match(case&#xd;&#xa;when &quot;BSN&quot; = '60000' then  (  &quot;SUBD_VILL&quot;  is null)&#xd;&#xa;when &quot;BSN&quot; = '99999' then not (  &quot;SUBD_VILL&quot;  is null)&#xd;&#xa;when &quot;BSN&quot; = '00000' then  (&quot;BLDG_TYPE&quot; is null)&#xd;&#xa;&#xd;&#xa;else &quot;SUBD_VILL&quot;&#xd;&#xa;end, '^[A-Z \s 0-9 !@#$%^&amp;*()_+-=,./?&lt;>;:''&quot;&quot;]+$')" field="SUBD_VILL"/>
    <constraint desc="if not applicable type &quot;NA&quot;" exp="&#xd;&#xa;regexp_match(case&#xd;&#xa;when &quot;BSN&quot; = '60000' then  ( &quot;SITIOPUROK&quot; is null)&#xd;&#xa;when &quot;BSN&quot; = '99999' then not ( &quot;SITIOPUROK&quot;  is null)&#xd;&#xa;when &quot;BSN&quot; = '00000' then  (&quot;BLDG_TYPE&quot; is null)&#xd;&#xa;&#xd;&#xa;else &quot;SITIOPUROK&quot;&#xd;&#xa;end, '^[A-Z \s 0-9 !@#$%^&amp;*()_+-=,./?&lt;>;:''&quot;&quot;]+$')" field="SITIOPUROK"/>
    <constraint desc="" exp="regexp_match(&#xd;&#xa;CASE&#xd;&#xa;WHEN &quot;BSN&quot; = '60000' THEN &quot;NO.OF_FLRS&quot; IS NULL&#xd;&#xa;ELSE &quot;NO.OF_FLRS&quot;&#xd;&#xa;END&#xd;&#xa;, '^[0-9]+$')" field="NO.OF_FLRS"/>
    <constraint desc="SELECT THE TYPE OF BUILDING" exp="case&#xd;&#xa;when &quot;BSN&quot; > '00000' AND &quot;BSN&quot; &lt; '30000' or &quot;BSN&quot; > '70000' AND &quot;BSN&quot; &lt; '80000' then &quot;BLDG_TYPE&quot; != '08_NONE (HOMELESS)' and &quot;BLDG_TYPE&quot; != '09_TEMPORARY EVACUATION CENTERS/RELOCATION AREA' &#xd;&#xa;&#xd;&#xa;when &quot;BSN&quot; = '60000' then &quot;BLDG_TYPE&quot; = '08_NONE (HOMELESS)' &#xd;&#xa;when &quot;BSN&quot; = '55555' then &quot;BLDG_TYPE&quot; = '09_TEMPORARY EVACUATION CENTERS/RELOCATION AREA' &#xd;&#xa;else &quot;BLDG_TYPE&quot;&#xd;&#xa;&#xd;&#xa;end&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;" field="BLDG_TYPE"/>
    <constraint desc="" exp="case&#xd;&#xa;when &quot;BSN&quot; = '60000' then not (&quot;ROOF_TYPE&quot; is null)&#xd;&#xa;when &quot;BSN&quot; = '99999' then not (&quot;ROOF_TYPE&quot; is null)&#xd;&#xa;when &quot;BSN&quot; = '00000' then not (&quot;BLDG_TYPE&quot; is null)&#xd;&#xa;when &quot;BLDG_TYPE&quot; != '08_NONE(HOMELESS)' THEN &quot;ROOF_TYPE&quot; != '08_NONE'&#xd;&#xa;else &quot;ROOF_TYPE&quot;&#xd;&#xa;end&#xd;&#xa;" field="ROOF_TYPE"/>
    <constraint desc="" exp="case&#xd;&#xa;when &quot;BSN&quot; = '60000' then not (&quot;WALL_TYPE&quot; is null)&#xd;&#xa;when &quot;BSN&quot; = '99999' then not (&quot;WALL_TYPE&quot; is null)&#xd;&#xa;when &quot;BSN&quot; = '00000' then not (&quot;BLDG_TYPE&quot; is null)&#xd;&#xa;when &quot;BLDG_TYPE&quot; != '08_NONE(HOMELESS)' THEN &quot;WALL_TYPE&quot; != '09_NONE'&#xd;&#xa;else &quot;WALL_TYPE&quot;&#xd;&#xa;end&#xd;&#xa;" field="WALL_TYPE"/>
    <constraint desc="" exp="case&#xd;&#xa;when &quot;BSN&quot; = '60000' then not (&quot;FLOOR_TYPE&quot; is null)&#xd;&#xa;when &quot;BSN&quot; = '99999' then not (&quot;FLOOR_TYPE&quot; is null)&#xd;&#xa;when &quot;BSN&quot; = '00000' then not (&quot;BLDG_TYPE&quot; is null)&#xd;&#xa;WHEN &quot;NO.OF_FLRS&quot; > 0 THEN &quot;FLOOR_TYPE&quot; != '07_NONE'&#xd;&#xa;when &quot;BLDG_TYPE&quot; != '08_NONE(HOMELESS)' THEN &quot;FLOOR_TYPE&quot; != '07_NONE'&#xd;&#xa;else &quot;FLOOR_TYPE&quot;&#xd;&#xa;end&#xd;&#xa;&#xd;&#xa;" field="FLOOR_TYPE"/>
    <constraint desc="" exp="" field="REMARKS"/>
    <constraint desc="" exp="" field="UNIQUE_ID"/>
    <constraint desc="" exp="case&#xd;&#xa;when &quot;BSN&quot; = '60000' then not ( &quot;M_DC_ILQ&quot;  is null)&#xd;&#xa;when &quot;BSN&quot; = '99999' then not ( &quot;M_DC_ILQ&quot;  is null)&#xd;&#xa;else  &quot;M_DC_ILQ&quot; &#xd;&#xa;end&#xd;&#xa;" field="M_DC_ILQ"/>
    <constraint desc="" exp="" field="DATE"/>
    <constraint desc="" exp="" field="FOR_VERIF"/>
    <constraint desc="" exp="" field="CASE"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="1" sortExpression="&quot;FOR_VERIF&quot;">
    <columns>
      <column width="97" type="field" hidden="0" name="GEOCODE"/>
      <column width="379" type="field" hidden="0" name="CBMS_GEOID"/>
      <column width="202" type="field" hidden="0" name="REG_NAME"/>
      <column width="-1" type="field" hidden="0" name="PROV_NAME"/>
      <column width="120" type="field" hidden="0" name="MUN_NAME"/>
      <column width="174" type="field" hidden="0" name="BGY_NAME"/>
      <column width="177" type="field" hidden="0" name="EA_CODE"/>
      <column width="177" type="field" hidden="0" name="BSN"/>
      <column width="179" type="field" hidden="0" name="X"/>
      <column width="-1" type="field" hidden="0" name="Y"/>
      <column width="125" type="field" hidden="0" name="HOUSE_NO"/>
      <column width="125" type="field" hidden="0" name="BLOCK_NO"/>
      <column width="-1" type="field" hidden="0" name="STREET_NAM"/>
      <column width="-1" type="field" hidden="0" name="SITIOPUROK"/>
      <column width="168" type="field" hidden="0" name="BLDG_TYPE"/>
      <column width="-1" type="field" hidden="0" name="NO.OF_FLRS"/>
      <column width="-1" type="field" hidden="0" name="M_DC_ILQ"/>
      <column width="-1" type="field" hidden="0" name="ROOF_TYPE"/>
      <column width="-1" type="field" hidden="0" name="WALL_TYPE"/>
      <column width="-1" type="field" hidden="0" name="FLOOR_TYPE"/>
      <column width="-1" type="field" hidden="0" name="REMARKS"/>
      <column width="236" type="field" hidden="0" name="UNIQUE_ID"/>
      <column width="168" type="field" hidden="0" name="SUBD_VILL"/>
      <column width="81" type="field" hidden="0" name="DATE"/>
      <column width="-1" type="field" hidden="0" name="fid"/>
      <column width="-1" type="field" hidden="0" name="FOR_VERIF"/>
      <column width="-1" type="field" hidden="0" name="CASE"/>
      <column width="-1" type="actions" hidden="1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorField showLabel="1" index="1" name="CBMS_GEOID"/>
    <attributeEditorContainer visibilityExpression="" columnCount="1" showLabel="1" visibilityExpressionEnabled="0" groupBox="1" name="PSGC">
      <attributeEditorField showLabel="1" index="3" name="REG_NAME"/>
      <attributeEditorField showLabel="1" index="4" name="PROV_NAME"/>
      <attributeEditorField showLabel="1" index="5" name="MUN_NAME"/>
      <attributeEditorField showLabel="1" index="6" name="BGY_NAME"/>
      <attributeEditorField showLabel="1" index="7" name="EA_CODE"/>
    </attributeEditorContainer>
    <attributeEditorField showLabel="1" index="26" name="CASE"/>
    <attributeEditorField showLabel="1" index="8" name="BSN"/>
    <attributeEditorField showLabel="1" index="25" name="FOR_VERIF"/>
    <attributeEditorField showLabel="1" index="9" name="X"/>
    <attributeEditorField showLabel="1" index="10" name="Y"/>
    <attributeEditorField showLabel="1" index="2" name="GEOCODE"/>
    <attributeEditorField showLabel="1" index="22" name="UNIQUE_ID"/>
    <attributeEditorField showLabel="1" index="24" name="DATE"/>
    <attributeEditorField showLabel="1" index="21" name="REMARKS"/>
  </attributeEditorForm>
  <editable>
    <field name="ADDRESS" editable="1"/>
    <field name="BGY_CODE" editable="1"/>
    <field name="BGY_NAME" editable="0"/>
    <field name="BLDG_CONDI" editable="0"/>
    <field name="BLDG_TYPE" editable="1"/>
    <field name="BLOCK_NO" editable="1"/>
    <field name="BSN" editable="1"/>
    <field name="CASE" editable="1"/>
    <field name="CBMS_GEOID" editable="0"/>
    <field name="COUNtER" editable="1"/>
    <field name="DATE" editable="0"/>
    <field name="DATE." editable="0"/>
    <field name="DATE1" editable="1"/>
    <field name="EA_CODE" editable="0"/>
    <field name="FLOOR_TYPE" editable="1"/>
    <field name="FOR_VERIF" editable="1"/>
    <field name="FOR_VERIFI" editable="1"/>
    <field name="GEOCODE" editable="0"/>
    <field name="HOUSE_NO" editable="1"/>
    <field name="IMAGE" editable="1"/>
    <field name="LOT_NO" editable="1"/>
    <field name="MUN_CODE" editable="1"/>
    <field name="MUN_NAME" editable="0"/>
    <field name="M_DC_ILQ" editable="1"/>
    <field name="NO.OF_FLRS" editable="1"/>
    <field name="OTHER_BLDG" editable="1"/>
    <field name="OTHER_FLR" editable="1"/>
    <field name="OTHER_ROOF" editable="1"/>
    <field name="OTHER_WALL" editable="1"/>
    <field name="PROV_CODE" editable="1"/>
    <field name="PROV_NAME" editable="0"/>
    <field name="REG_CODE" editable="0"/>
    <field name="REG_NAME" editable="0"/>
    <field name="REMARKS" editable="1"/>
    <field name="ROOF_TYPE" editable="1"/>
    <field name="SITIOPUROK" editable="1"/>
    <field name="SPCL_BLDG" editable="0"/>
    <field name="STREET_NAM" editable="1"/>
    <field name="SUBD/VILL" editable="1"/>
    <field name="SUBD_VILL" editable="1"/>
    <field name="TIME" editable="1"/>
    <field name="UNIQUE_ID" editable="0"/>
    <field name="UNIT_NO" editable="1"/>
    <field name="UP_FEATURE" editable="1"/>
    <field name="UP_INDI" editable="1"/>
    <field name="VILL_NAME" editable="1"/>
    <field name="WALL_TYPE" editable="1"/>
    <field name="X" editable="0"/>
    <field name="Y" editable="0"/>
    <field name="Z" editable="1"/>
    <field name="bgy_psgc" editable="0"/>
    <field name="bldgstatus" editable="1"/>
    <field name="bsn" editable="1"/>
    <field name="eacode" editable="0"/>
    <field name="fid" editable="1"/>
    <field name="geobsn" editable="1"/>
    <field name="geobsn2019" editable="1"/>
    <field name="geobsn2022" editable="1"/>
    <field name="geoid" editable="1"/>
    <field name="hsn" editable="0"/>
    <field name="husn" editable="0"/>
    <field name="mun_psgc" editable="0"/>
    <field name="output_nam" editable="0"/>
    <field name="prov_psgc" editable="0"/>
    <field name="reg_psgc" editable="1"/>
    <field name="remarks" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="1" name="ADDRESS"/>
    <field labelOnTop="0" name="BGY_CODE"/>
    <field labelOnTop="0" name="BGY_NAME"/>
    <field labelOnTop="0" name="BLDG_CONDI"/>
    <field labelOnTop="1" name="BLDG_TYPE"/>
    <field labelOnTop="0" name="BLOCK_NO"/>
    <field labelOnTop="0" name="BSN"/>
    <field labelOnTop="0" name="CASE"/>
    <field labelOnTop="0" name="CBMS_GEOID"/>
    <field labelOnTop="0" name="COUNtER"/>
    <field labelOnTop="0" name="DATE"/>
    <field labelOnTop="1" name="DATE."/>
    <field labelOnTop="0" name="DATE1"/>
    <field labelOnTop="0" name="EA_CODE"/>
    <field labelOnTop="1" name="FLOOR_TYPE"/>
    <field labelOnTop="0" name="FOR_VERIF"/>
    <field labelOnTop="0" name="FOR_VERIFI"/>
    <field labelOnTop="0" name="GEOCODE"/>
    <field labelOnTop="0" name="HOUSE_NO"/>
    <field labelOnTop="0" name="IMAGE"/>
    <field labelOnTop="0" name="LOT_NO"/>
    <field labelOnTop="0" name="MUN_CODE"/>
    <field labelOnTop="0" name="MUN_NAME"/>
    <field labelOnTop="1" name="M_DC_ILQ"/>
    <field labelOnTop="0" name="NO.OF_FLRS"/>
    <field labelOnTop="0" name="OTHER_BLDG"/>
    <field labelOnTop="0" name="OTHER_FLR"/>
    <field labelOnTop="0" name="OTHER_ROOF"/>
    <field labelOnTop="0" name="OTHER_WALL"/>
    <field labelOnTop="0" name="PROV_CODE"/>
    <field labelOnTop="0" name="PROV_NAME"/>
    <field labelOnTop="0" name="REG_CODE"/>
    <field labelOnTop="0" name="REG_NAME"/>
    <field labelOnTop="1" name="REMARKS"/>
    <field labelOnTop="1" name="ROOF_TYPE"/>
    <field labelOnTop="0" name="SITIOPUROK"/>
    <field labelOnTop="0" name="SPCL_BLDG"/>
    <field labelOnTop="0" name="STREET_NAM"/>
    <field labelOnTop="0" name="SUBD/VILL"/>
    <field labelOnTop="0" name="SUBD_VILL"/>
    <field labelOnTop="1" name="TIME"/>
    <field labelOnTop="0" name="UNIQUE_ID"/>
    <field labelOnTop="0" name="UNIT_NO"/>
    <field labelOnTop="1" name="UP_FEATURE"/>
    <field labelOnTop="0" name="UP_INDI"/>
    <field labelOnTop="0" name="VILL_NAME"/>
    <field labelOnTop="1" name="WALL_TYPE"/>
    <field labelOnTop="0" name="X"/>
    <field labelOnTop="0" name="Y"/>
    <field labelOnTop="0" name="Z"/>
    <field labelOnTop="0" name="bgy_psgc"/>
    <field labelOnTop="0" name="bldgstatus"/>
    <field labelOnTop="0" name="bsn"/>
    <field labelOnTop="0" name="eacode"/>
    <field labelOnTop="0" name="fid"/>
    <field labelOnTop="0" name="geobsn"/>
    <field labelOnTop="0" name="geobsn2019"/>
    <field labelOnTop="0" name="geobsn2022"/>
    <field labelOnTop="0" name="geoid"/>
    <field labelOnTop="0" name="hsn"/>
    <field labelOnTop="0" name="husn"/>
    <field labelOnTop="0" name="mun_psgc"/>
    <field labelOnTop="0" name="output_nam"/>
    <field labelOnTop="0" name="prov_psgc"/>
    <field labelOnTop="0" name="reg_psgc"/>
    <field labelOnTop="0" name="remarks"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="ADDRESS"/>
    <field reuseLastValue="0" name="BGY_CODE"/>
    <field reuseLastValue="0" name="BGY_NAME"/>
    <field reuseLastValue="0" name="BLDG_CONDI"/>
    <field reuseLastValue="0" name="BLDG_TYPE"/>
    <field reuseLastValue="0" name="BLOCK_NO"/>
    <field reuseLastValue="0" name="BSN"/>
    <field reuseLastValue="0" name="CASE"/>
    <field reuseLastValue="0" name="CBMS_GEOID"/>
    <field reuseLastValue="0" name="COUNtER"/>
    <field reuseLastValue="0" name="DATE"/>
    <field reuseLastValue="0" name="DATE."/>
    <field reuseLastValue="0" name="DATE1"/>
    <field reuseLastValue="0" name="EA_CODE"/>
    <field reuseLastValue="0" name="FLOOR_TYPE"/>
    <field reuseLastValue="0" name="FOR_VERIF"/>
    <field reuseLastValue="0" name="FOR_VERIFI"/>
    <field reuseLastValue="0" name="GEOCODE"/>
    <field reuseLastValue="0" name="HOUSE_NO"/>
    <field reuseLastValue="0" name="IMAGE"/>
    <field reuseLastValue="0" name="LOT_NO"/>
    <field reuseLastValue="0" name="MUN_CODE"/>
    <field reuseLastValue="0" name="MUN_NAME"/>
    <field reuseLastValue="0" name="M_DC_ILQ"/>
    <field reuseLastValue="0" name="NO.OF_FLRS"/>
    <field reuseLastValue="0" name="OTHER_BLDG"/>
    <field reuseLastValue="0" name="OTHER_FLR"/>
    <field reuseLastValue="0" name="OTHER_ROOF"/>
    <field reuseLastValue="0" name="OTHER_WALL"/>
    <field reuseLastValue="0" name="PROV_CODE"/>
    <field reuseLastValue="0" name="PROV_NAME"/>
    <field reuseLastValue="0" name="REG_CODE"/>
    <field reuseLastValue="0" name="REG_NAME"/>
    <field reuseLastValue="0" name="REMARKS"/>
    <field reuseLastValue="0" name="ROOF_TYPE"/>
    <field reuseLastValue="0" name="SITIOPUROK"/>
    <field reuseLastValue="0" name="SPCL_BLDG"/>
    <field reuseLastValue="0" name="STREET_NAM"/>
    <field reuseLastValue="0" name="SUBD/VILL"/>
    <field reuseLastValue="0" name="SUBD_VILL"/>
    <field reuseLastValue="0" name="TIME"/>
    <field reuseLastValue="0" name="UNIQUE_ID"/>
    <field reuseLastValue="0" name="UNIT_NO"/>
    <field reuseLastValue="0" name="UP_FEATURE"/>
    <field reuseLastValue="0" name="UP_INDI"/>
    <field reuseLastValue="0" name="VILL_NAME"/>
    <field reuseLastValue="0" name="WALL_TYPE"/>
    <field reuseLastValue="0" name="X"/>
    <field reuseLastValue="0" name="Y"/>
    <field reuseLastValue="0" name="Z"/>
    <field reuseLastValue="0" name="bgy_psgc"/>
    <field reuseLastValue="0" name="bldgstatus"/>
    <field reuseLastValue="0" name="bsn"/>
    <field reuseLastValue="1" name="eacode"/>
    <field reuseLastValue="0" name="fid"/>
    <field reuseLastValue="0" name="geobsn"/>
    <field reuseLastValue="0" name="geobsn2019"/>
    <field reuseLastValue="0" name="geobsn2022"/>
    <field reuseLastValue="0" name="geoid"/>
    <field reuseLastValue="0" name="hsn"/>
    <field reuseLastValue="0" name="husn"/>
    <field reuseLastValue="0" name="mun_psgc"/>
    <field reuseLastValue="0" name="output_nam"/>
    <field reuseLastValue="0" name="prov_psgc"/>
    <field reuseLastValue="0" name="reg_psgc"/>
    <field reuseLastValue="0" name="remarks"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"CBMS_GEOID"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
