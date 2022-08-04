# Monte Carlo Insights Looker Block

This Looker Block provides a set of Explores and Dashboards for Monte Carlo Insights. More information about specific reports can be found at [docs.getmontecarlo.com](https://docs.getmontecarlo.com/docs/insights).

![image](https://user-images.githubusercontent.com/16830555/182868578-cd484127-d5bf-4c77-b81d-52d9ff1906d0.png)

## Installation
0. This Block requires the Monte Carlo Insights data to be in your own environment. This can be accomplished by using the Snowflake Data Share or using the [Monte Carlo CLI](https://docs.getmontecarlo.com/docs/using-the-cli) to pipe in the data yourself.
1. In Looker, under Amdmin > General > Labs, ensure `Local Project Import` is turned on. Under Admin > Platform > Marketplace, ensure Marketplace is turned on.
2. In the top right corner of Looker, go to Marketplace > Manage.   
![image](https://user-images.githubusercontent.com/16830555/182867023-78de0c8d-f3b6-44b2-a2ac-c976499be6a6.png)
3. Use the button in the top right to Install via Git URL.  
![image](https://user-images.githubusercontent.com/16830555/182867195-987b108f-2907-46a3-b8eb-fb06986730b1.png)
3. Use the following:  
  Git Repository URL: `https://github.com/monte-carlo-data/data_observability_insights_analytics_block.git` 
  Git Commit SHA: `8de0a112bb0b565d4bb698d04e42468026c315f9`
4. Click Install.  
5. Set the proper Connection Name to the Looker connection and Dataset Name to the Database that includes the Monte Carlo Data Share or wherever the data lives in your environment.  
![image](https://user-images.githubusercontent.com/16830555/182867530-e086de0f-0130-4809-aa82-8baebdf5aaaf.png)
6. The block should now be installed and you should be able to see it under Blocks on the left navigation.
![image](https://user-images.githubusercontent.com/16830555/182867939-86ce9cc7-6f30-4d0b-98aa-7dbdd9358258.png)
![image](https://user-images.githubusercontent.com/16830555/182867896-52e4b15e-a43f-42c7-a13a-5446f64708af.png)
