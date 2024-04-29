/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aeberius <aeberius@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/27 18:05:50 by aeberius          #+#    #+#             */
/*   Updated: 2024/04/27 19:02:42 by aeberius         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*new_element;
	t_list	*new_lst;

	if (lst == NULL || (*f) == NULL || (*del) == NULL)
		return (NULL);
	while (lst->next != NULL)
	{
		new_element = ft_lstnew(f(lst->content));
		if (new_element == NULL)
			ft_lstclear(&new_lst, del);
		ft_lstadd_back(&new_lst, new_element);
		lst = lst->next;
	}
	return (new_lst);
}
